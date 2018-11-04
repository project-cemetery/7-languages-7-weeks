module AtcsAsCsv

  def self.included(base)
    base.extend ClassMethods
  end

  class CsvRow
    attr_accessor :headers, :content

    def initialize(headers, content)
      @headers = headers
      @content = content
    end

    def method_missing(name)
      @content[@headers.index(name.to_s)]
    end

  end

  module ClassMethods
    def atcs_as_csv
      include InstanceMethods
    end
  end
  
  module InstanceMethods
    def read
      @csv_contents = []
      filename = "1-Ruby/day-3/#{self.class.to_s.downcase}.txt"
      file = File.new(filename)
      @headers = file.gets.chomp.split(', ')

      file.each do |row|
        @csv_contents << CsvRow.new(
          @headers, row.chomp.split(', ')
        )
      end
    end

    def each(&block)
      @csv_contents.each { |row| block.call row }
    end

    attr_accessor :headers, :csv_contents

    def initialize
      read
    end
  end
end

class RubyCsv
  include AtcsAsCsv
  atcs_as_csv
end

m = RubyCsv.new
m.each { |row| puts row.one }

(ns day-1.core)

; 01
(defn big [st n] (> (count st) n))

; 2
(defn collection-type [col]
  (if (list? col) :list
    (if (vector? col) :vector :map)
  )
)

(defn main []
  (println "day-1"),

  (println "\ntask 01-big"),
  (println "'hell', 5:" (big "hell" 5)),
  (println "'hello, world', 5:" (big "hello, world" 5)),

  (println "\ntask 02-collection-type"),
  (println (collection-type [:dff, 1])),
  (println (collection-type '(:dff, 1)))
  (println (collection-type {:dff 1}))
)

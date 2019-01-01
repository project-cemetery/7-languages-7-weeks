(defmacro unless [test body otherBody]
  (list 'if (list 'not test) body otherBody)
)

(unless true (println "never one") (println "always one"))
(unless false (println "always two") (println "never two"))

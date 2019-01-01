(defn collection-type [col]
  (if (list? col) :list
    (if (vector? col) :vector :map)
  )
)

(println (collection-type [:dff, 1]))
(println (collection-type '(:dff, 1)))
(println (collection-type {:dff 1}))

(defn create
  [initial]
  (atom initial)
)

(defn operation
  [account diff]
  (swap! account (fn [x] (+ x diff)))
)

(def ac (create 0))
(println ac)

(operation ac 12)
(println ac)

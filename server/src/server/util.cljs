
(ns server.util )

(defn find-first [f xs] (reduce (fn [_ x] (when (f x) (reduced x))) nil xs))

(defn log-js! [& args]
  (apply js/console.log (map (fn [x] (if (coll? x) (clj->js x) x)) args)))

(defn map-val [f xs]
  (assert (or (map? xs) (seq? xs)) "map-val deals maps")
  (->> xs (map (fn [[k x]] [k (f x)]))))

(defn try-verbosely! [x] (try x (catch js/Error e (.error js/console e))))

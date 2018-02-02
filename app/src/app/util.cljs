
(ns app.util (:require [clojure.string :as string]))

(defn join-segments [acc xs]
  (if (empty? xs)
    (string/join "/" acc)
    (let [cursor (first xs)
          next-acc (cond
                     (= cursor ".") acc
                     (= cursor "..") (vec (butlast acc))
                     (= cursor "") acc
                     :else (conj acc cursor))]
      (recur next-acc (rest xs)))))

(defn join-path [xs ys]
  (if (= (first ys) "/")
    ys
    (let [absolute? (= (first xs) "/")
          new-path (join-segments [] (concat (string/split xs "/") (string/split ys "/")))]
      (if absolute? (str "/" new-path) new-path))))

(defn map-val [f xs]
  (assert (or (map? xs) (seq? xs)) "map-val deals maps")
  (->> xs (map (fn [[k x]] [k (f x)]))))

(defn map-with-index [f xs] (->> xs (map-indexed (fn [idx x] [idx (f x)]))))

(defn test-join-path! []
  (println (pr-str (join-path "" "")))
  (println (pr-str (join-path "/" "")))
  (println (pr-str (join-path "" "/")))
  (println (pr-str (join-path "a" "b")))
  (println (pr-str (join-path "a" "../b")))
  (println (pr-str (join-path "a" "./b")))
  (println (pr-str (join-path "a/" "./b"))))

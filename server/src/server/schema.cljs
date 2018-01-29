
(ns server.schema )

(def configs {:storage-key "/data/cumulo/termina-storage.edn", :port 5021})

(def database {:sessions {}, :users {}, :topics {}, :processes {}})

(def notification {:id nil, :kind nil, :text nil})

(def process {:pid 0, :content [], :started-at 0, :alive? false, :cwd ""})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router {:name :home, :data nil, :router nil},
   :notifications []})

(def user {:name nil, :id nil, :nickname nil, :avatar nil, :password nil})

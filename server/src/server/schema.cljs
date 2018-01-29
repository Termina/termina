
(ns server.schema )

(def command {:id nil, :path ".", :code ""})

(def configs {:storage-key "/data/mvc-works/termina-storage.edn", :port 5021})

(def database {:sessions {}, :users {}, :topics {}, :processes {}, :workflows {}})

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

(def workflow {:id nil, :name nil, :base-dir "~/", :commands {}})

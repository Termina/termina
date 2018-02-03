
(ns server.schema )

(def command {:id nil, :path ".", :code ""})

(def configs {:storage-key (str js/process.env.HOME "/.config/termina.edn"), :port 6200})

(def database
  {:sessions {}, :users {}, :topics {}, :processes {}, :workflows {}, :histories []})

(def history {:id nil, :pid 0, :started-at 0, :cwd "", :command ""})

(def notification {:id nil, :kind nil, :text nil})

(def process {:pid 0, :content [], :started-at 0, :alive? false, :cwd "", :command ""})

(def router {:name nil, :params nil, :data nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router {:name :home, :data nil, :router nil},
   :notifications []})

(def user {:name nil, :id nil, :nickname nil, :avatar nil, :password nil})

(def workflow {:id nil, :name nil, :base-dir "~/", :commands {}})

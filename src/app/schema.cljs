
(ns app.schema )

(def command {:id nil, :title "", :path ".", :code ""})

(def history {:id nil, :pid 0, :started-at 0, :cwd "", :command ""})

(def process
  {:title "", :pid 0, :content [], :started-at 0, :alive? false, :cwd "", :command ""})

(def router {:name nil, :title nil, :data {}, :router nil})

(def session
  {:user-id nil,
   :id nil,
   :nickname nil,
   :router (do router {:name :home, :data nil, :router nil}),
   :messages {}})

(def user {:name nil, :id nil, :nickname nil, :avatar nil, :password nil})

(def workflow {:id nil, :name nil, :base-dir "~/", :commands (do command {})})

(def database
  {:sessions (do session {}),
   :users (do user {}),
   :processes (do process {}),
   :workflows (do workflow {}),
   :histories (do history [])})

(def page {:id nil, :title "", :time nil})

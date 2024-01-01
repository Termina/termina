
{} (:package |app)
  :configs $ {} (:init-fn |app.server/main!) (:port 6001) (:reload-fn |app.server/reload!) (:storage-key |calcit.cirru) (:version |0.1.12)
    :modules $ [] |lilac/ |recollect/ |memof/ |ws-edn.calcit/ |cumulo-util.calcit/ |cumulo-reel.calcit/ |fuzzy-filter/
  :entries $ {}
    :page $ {} (:init-fn |app.client/main!) (:reload-fn |app.client/reload!)
      :modules $ [] |respo.calcit/ |lilac/ |recollect/ |memof/ |respo-ui.calcit/ |ws-edn.calcit/ |cumulo-util.calcit/ |respo-message.calcit/ |cumulo-reel.calcit/ |fuzzy-filter/ |alerts.calcit/ |respo-feather.calcit/
  :files $ {}
    |app.client $ %{} :FileEntry
      :defs $ {}
        |*states $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629790433013) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*states)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1629797696054) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797697233) (:by |B1y7Rc-Zz) (:text |:states)
                      |j $ %{} :Expr (:at 1629797698034) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797698399) (:by |B1y7Rc-Zz) (:text |{})
        |*store $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629790423575) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*store)
              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
        |connect! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |connect!)
              |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |url-obj)
                          |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |url-parse)
                              |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |js/location.href)
                              |r $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |true)
                      |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |host)
                          |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |.-host)
                              |r $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |js/location.hostname)
                      |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |url-obj)
                                  |r $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |.-query)
                                  |v $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |.-port)
                              |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                      |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text "|\"ws://")
                          |r $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |host)
                          |v $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text "|\":")
                          |x $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |port)
                      |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |:on-open)
                              |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |simulate-login!)
                          |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |:on-close)
                              |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |event)
                                  |r $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |reset!)
                                      |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |*store)
                                      |r $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |nil)
                                  |v $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                      |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text "|\"Lost connection!")
                          |v $ %{} :Expr (:at 1629790459375) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |:on-data)
                              |j $ %{} :Leaf (:at 1629790459375) (:by |B1y7Rc-Zz) (:text |on-server-data)
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |op)
              |v $ %{} :Expr (:at 1553327343128) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1553327343128) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |and)
                      |j $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1553327343128) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |not=)
                          |j $ %{} :Expr (:at 1689561578521) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1689561579354) (:by |B1y7Rc-Zz) (:text |nth)
                              |T $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |op)
                              |b $ %{} :Leaf (:at 1689561580041) (:by |B1y7Rc-Zz) (:text |0)
                          |r $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |:states)
                  |r $ %{} :Expr (:at 1553327343128) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |println)
                      |j $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text "|\"Dispatch")
                      |r $ %{} :Leaf (:at 1553327343128) (:by |B1y7Rc-Zz) (:text |op)
              |x $ %{} :Expr (:at 1512319531669) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1689561585848) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |L $ %{} :Leaf (:at 1512319536359) (:by |B1y7Rc-Zz) (:text |op)
                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Expr (:at 1689561589557) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:states)
                          |b $ %{} :Leaf (:at 1689561591497) (:by |B1y7Rc-Zz) (:text |cursor)
                          |h $ %{} :Leaf (:at 1689561591739) (:by |B1y7Rc-Zz) (:text |s)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |reset!)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*states)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789993128) (:by |B1y7Rc-Zz) (:text |update-states)
                              |j $ %{} :Leaf (:at 1629789998447) (:by |B1y7Rc-Zz) (:text |@*states)
                              |r $ %{} :Leaf (:at 1689561594153) (:by |B1y7Rc-Zz) (:text |cursor)
                              |t $ %{} :Leaf (:at 1689561594447) (:by |B1y7Rc-Zz) (:text |s)
                  |j $ %{} :Expr (:at 1512319547838) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561595707) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512319553572) (:by |B1y7Rc-Zz) (:text |:effect/connect)
                      |j $ %{} :Expr (:at 1512319556120) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1512319559727) (:by |B1y7Rc-Zz) (:text |connect!)
                  |n $ %{} :Expr (:at 1689561597643) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1689561598120) (:by |B1y7Rc-Zz) (:text |_)
                      |T $ %{} :Expr (:at 1689561588334) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561588334) (:by |B1y7Rc-Zz) (:text |ws-send!)
                          |b $ %{} :Leaf (:at 1689561603643) (:by |B1y7Rc-Zz) (:text |op)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
              |s $ %{} :Expr (:at 1684121931582) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1684121931582) (:by |B1y7Rc-Zz) (:text |if)
                  |b $ %{} :Leaf (:at 1684121931582) (:by |B1y7Rc-Zz) (:text |config/dev?)
                  |h $ %{} :Expr (:at 1684121931582) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1684121931582) (:by |B1y7Rc-Zz) (:text |load-console-formatter!)
              |t $ %{} :Expr (:at 1553327358841) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553327358841) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1553327358841) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1553327358841) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327358841) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1553327358841) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1553327358841) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1553327358841) (:by |B1y7Rc-Zz) (:text "|\"release")
              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |xD $ %{} :Expr (:at 1512319371768) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1512319373162) (:by |B1y7Rc-Zz) (:text |connect!)
              |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*store)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |P $ %{} :Leaf (:at 1629790078736) (:by |B1y7Rc-Zz) (:text |fn)
                      |d $ %{} :Expr (:at 1629790079042) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790081229) (:by |B1y7Rc-Zz) (:text |s)
                          |j $ %{} :Leaf (:at 1629790079761) (:by |B1y7Rc-Zz) (:text |p)
                      |r $ %{} :Expr (:at 1629790083114) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |add-watch)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |*states)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:changes)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790074087) (:by |B1y7Rc-Zz) (:text |fn)
                      |f $ %{} :Expr (:at 1629790074377) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790082634) (:by |B1y7Rc-Zz) (:text |s)
                          |j $ %{} :Leaf (:at 1629790075337) (:by |B1y7Rc-Zz) (:text |p)
                      |r $ %{} :Expr (:at 1629790083723) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |yl $ %{} :Expr (:at 1553330698464) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629790097575) (:by |B1y7Rc-Zz) (:text |js/window.addEventListener)
                  |j $ %{} :Leaf (:at 1553330718563) (:by |B1y7Rc-Zz) (:text "|\"keydown")
                  |r $ %{} :Expr (:at 1553330718994) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553330719312) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1553330719582) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553330724062) (:by |B1y7Rc-Zz) (:text |event)
                      |r $ %{} :Expr (:at 1553330724518) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553330728739) (:by |B1y7Rc-Zz) (:text |on-window-keydown)
                          |j $ %{} :Leaf (:at 1553330730139) (:by |B1y7Rc-Zz) (:text |event)
              |yn $ %{} :Expr (:at 1553327365320) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553327365320) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                  |j $ %{} :Expr (:at 1553327365320) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790101096) (:by |B1y7Rc-Zz) (:text |\)
                      |j $ %{} :Leaf (:at 1553327365320) (:by |B1y7Rc-Zz) (:text |if)
                      |r $ %{} :Expr (:at 1553327365320) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327365320) (:by |B1y7Rc-Zz) (:text |nil?)
                          |j $ %{} :Leaf (:at 1553327365320) (:by |B1y7Rc-Zz) (:text |@*store)
                      |v $ %{} :Expr (:at 1553327365320) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327365320) (:by |B1y7Rc-Zz) (:text |connect!)
        |mount-target $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |mount-target)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1696745567457) (:by |B1y7Rc-Zz) (:text |js/document.querySelector)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||.app)
        |on-server-data $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |on-server-data)
              |r $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |data)
              |v $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |case-default)
                  |j $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |:kind)
                      |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |data)
                  |r $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |println)
                      |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text "|\"unknown server data kind:")
                      |r $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |data)
                  |v $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |:patch)
                      |j $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |let)
                          |j $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |changes)
                                  |j $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |:data)
                                      |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |data)
                          |r $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |when)
                              |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |r $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |js/console.log)
                                  |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text "|\"Changes")
                                  |r $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |changes)
                          |v $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |reset!)
                              |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |*store)
                              |r $ %{} :Expr (:at 1629790473254) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |patch-twig)
                                  |j $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |@*store)
                                  |r $ %{} :Leaf (:at 1629790473254) (:by |B1y7Rc-Zz) (:text |changes)
        |on-window-keydown $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553330731463) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553330731463) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1553330731463) (:by |B1y7Rc-Zz) (:text |on-window-keydown)
              |r $ %{} :Expr (:at 1553330731463) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553330733174) (:by |B1y7Rc-Zz) (:text |event)
              |v $ %{} :Expr (:at 1553330733679) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553330734833) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1553330735279) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553330736182) (:by |B1y7Rc-Zz) (:text |and)
                      |j $ %{} :Expr (:at 1553330737065) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553330737816) (:by |B1y7Rc-Zz) (:text |=)
                          |j $ %{} :Leaf (:at 1553330742844) (:by |B1y7Rc-Zz) (:text "|\"k")
                          |r $ %{} :Expr (:at 1553330744618) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553330747968) (:by |B1y7Rc-Zz) (:text |.-key)
                              |j $ %{} :Leaf (:at 1553330748795) (:by |B1y7Rc-Zz) (:text |event)
                      |r $ %{} :Expr (:at 1553330751004) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553330755413) (:by |B1y7Rc-Zz) (:text |.-metaKey)
                          |j $ %{} :Leaf (:at 1553330756973) (:by |B1y7Rc-Zz) (:text |event)
                  |r $ %{} :Expr (:at 1553621925078) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1683802939416) (:by |B1y7Rc-Zz) (:text |case-default)
                      |L $ %{} :Expr (:at 1553621931272) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553621931272) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1553621931272) (:by |B1y7Rc-Zz) (:text |@*store)
                          |r $ %{} :Leaf (:at 1553621931272) (:by |B1y7Rc-Zz) (:text |:router)
                          |v $ %{} :Leaf (:at 1553621931272) (:by |B1y7Rc-Zz) (:text |:name)
                      |P $ %{} :Expr (:at 1683802940987) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1683802940987) (:by |B1y7Rc-Zz) (:text |do)
                          |b $ %{} :Expr (:at 1683802940987) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1683802940987) (:by |B1y7Rc-Zz) (:text |println)
                              |b $ %{} :Leaf (:at 1683802940987) (:by |B1y7Rc-Zz) (:text "|\"no thing to clear in")
                              |h $ %{} :Expr (:at 1683802940987) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1683802940987) (:by |B1y7Rc-Zz) (:text |->)
                                  |b $ %{} :Leaf (:at 1683802940987) (:by |B1y7Rc-Zz) (:text |@*store)
                                  |h $ %{} :Leaf (:at 1683802940987) (:by |B1y7Rc-Zz) (:text |:router)
                                  |l $ %{} :Leaf (:at 1683802940987) (:by |B1y7Rc-Zz) (:text |:name)
                      |T $ %{} :Expr (:at 1553621932234) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1553621934787) (:by |B1y7Rc-Zz) (:text |:home)
                          |T $ %{} :Expr (:at 1553330758938) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553330760932) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1689561889813) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689561890477) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1553330771485) (:by |B1y7Rc-Zz) (:text |:process/clear)
                      |j $ %{} :Expr (:at 1553621935532) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553621940264) (:by |B1y7Rc-Zz) (:text |:history)
                          |j $ %{} :Expr (:at 1553621943509) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553621943509) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1689561892837) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689561893448) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1553621948271) (:by |B1y7Rc-Zz) (:text |:process/clear-history)
                      |n $ %{} :Expr (:at 1696745603840) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1696745605075) (:by |B1y7Rc-Zz) (:text |:process)
                          |b $ %{} :Expr (:at 1696745605716) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696745608260) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |b $ %{} :Expr (:at 1696745609083) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1696745609701) (:by |B1y7Rc-Zz) (:text |::)
                                  |b $ %{} :Leaf (:at 1696745615597) (:by |B1y7Rc-Zz) (:text |:process/shorten-content)
                                  |h $ %{} :Expr (:at 1696745617094) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1696745618261) (:by |B1y7Rc-Zz) (:text |->)
                                      |b $ %{} :Leaf (:at 1696745620616) (:by |B1y7Rc-Zz) (:text |@*store)
                                      |h $ %{} :Leaf (:at 1696745622354) (:by |B1y7Rc-Zz) (:text |:router)
                                      |l $ %{} :Leaf (:at 1696745623912) (:by |B1y7Rc-Zz) (:text |:data)
                                      |o $ %{} :Leaf (:at 1696745624840) (:by |B1y7Rc-Zz) (:text |:pid)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |if)
                  |j $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |or)
                      |j $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |client-errors)
                      |r $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |r $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |hud!)
                      |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text "|\"error")
                      |r $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |client-errors)
                          |r $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |&newline)
                          |v $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |server-errors)
                  |v $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |do)
                      |j $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |hud!)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text "|\"inactive")
                          |r $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |:changes)
                      |v $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |remove-watch)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |:changes)
                      |x $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |clear-cache!)
                      |y $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yT $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |*store)
                          |r $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |store)
                                  |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yj $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |add-watch)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |*states)
                          |r $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |:changes)
                          |v $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |states)
                                  |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |prev)
                              |r $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |render-app!)
                      |yr $ %{} :Expr (:at 1629797005620) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1629797005620) (:by |B1y7Rc-Zz) (:text "|\"Code updated.")
        |render-app! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render-app!)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629790090190) (:by |B1y7Rc-Zz) (:text |render!)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |mount-target)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
                      |j $ %{} :Expr (:at 1629797708855) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1629797710162) (:by |B1y7Rc-Zz) (:text |:states)
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |@*states)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |@*store)
                  |v $ %{} :Leaf (:at 1512318370491) (:by |B1y7Rc-Zz) (:text |dispatch!)
        |simulate-login! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |simulate-login!)
              |r $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |raw)
                          |j $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1689561958267) (:by |B1y7Rc-Zz) (:text |js/localStorage.getItem)
                              |r $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |:storage-key)
                                  |j $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |config/site)
                  |r $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |raw)
                      |r $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text "|\"Found storage.")
                          |r $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1689561950115) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689561950828) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                                  |b $ %{} :Expr (:at 1689561954052) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689561954052) (:by |B1y7Rc-Zz) (:text |parse-cirru-edn)
                                      |b $ %{} :Leaf (:at 1689561954052) (:by |B1y7Rc-Zz) (:text |raw)
                      |v $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |do)
                          |j $ %{} :Expr (:at 1629790546184) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629790546184) (:by |B1y7Rc-Zz) (:text "|\"Found no storage.")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.client)
            |r $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |render!)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |clear-cache!)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |realize-ssr!)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.cursor)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1629790005339) (:by |B1y7Rc-Zz) (:text |update-states)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.container)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |yj $ %{} :Expr (:at 1527788760671) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788761874) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788764341) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788766627) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788767318) (:by |root) (:text |config)
                |yr $ %{} :Expr (:at 1553327232862) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327232862) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327232862) (:by |B1y7Rc-Zz) (:text |ws-edn.client)
                    |r $ %{} :Leaf (:at 1553327232862) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327232862) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327232862) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327232862) (:by |B1y7Rc-Zz) (:text |ws-connect!)
                        |r $ %{} :Leaf (:at 1553327232862) (:by |B1y7Rc-Zz) (:text |ws-send!)
                |yv $ %{} :Expr (:at 1553327236242) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327236242) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327236242) (:by |B1y7Rc-Zz) (:text |recollect.patch)
                    |r $ %{} :Leaf (:at 1553327236242) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327236242) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327236242) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327236242) (:by |B1y7Rc-Zz) (:text |patch-twig)
                |yx $ %{} :Expr (:at 1553327239531) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327239531) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327239531) (:by |B1y7Rc-Zz) (:text |cumulo-util.core)
                    |r $ %{} :Leaf (:at 1553327239531) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327239531) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327239531) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327239531) (:by |B1y7Rc-Zz) (:text |on-page-touch)
                |yy $ %{} :Expr (:at 1553734434289) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553734434670) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553734438464) (:by |B1y7Rc-Zz) (:text "|\"url-parse")
                    |r $ %{} :Leaf (:at 1629790012904) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1553734442601) (:by |B1y7Rc-Zz) (:text |url-parse)
                |yyT $ %{} :Expr (:at 1629797020947) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text "|\"bottom-tip")
                    |j $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text |hud!)
                |yyj $ %{} :Expr (:at 1629797020947) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text "|\"./calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text |client-errors)
                |yyr $ %{} :Expr (:at 1629797020947) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text "|\"../js-out/calcit.build-errors")
                    |j $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text |:default)
                    |r $ %{} :Leaf (:at 1629797020947) (:by |B1y7Rc-Zz) (:text |server-errors)
    |app.comp.command $ %{} :FileEntry
      :defs $ {}
        |comp-command-button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553451008114) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |comp-command-button)
              |n $ %{} :Expr (:at 1553451008807) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553451011255) (:by |B1y7Rc-Zz) (:text |workflow)
              |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |div)
                  |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:style)
                          |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1553495298442) (:by |B1y7Rc-Zz) (:text |100)
                                      |r $ %{} :Leaf (:at 1553495308692) (:by |B1y7Rc-Zz) (:text |120)
                                      |v $ %{} :Leaf (:at 1553495317307) (:by |B1y7Rc-Zz) (:text |60)
                              |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:padding)
                                  |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text "||0 8px")
                              |v $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:display)
                                  |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:inline-block)
                              |x $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:cursor)
                                  |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:pointer)
                              |y $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1557043011087) (:by |B1y7Rc-Zz) (:text |:margin)
                                  |j $ %{} :Leaf (:at 1557043012785) (:by |B1y7Rc-Zz) (:text |4)
                              |yT $ %{} :Expr (:at 1553495279171) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553495280039) (:by |B1y7Rc-Zz) (:text |:color)
                                  |j $ %{} :Expr (:at 1553495286599) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553495287067) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1553495288710) (:by |B1y7Rc-Zz) (:text |0)
                                      |r $ %{} :Leaf (:at 1553495288966) (:by |B1y7Rc-Zz) (:text |0)
                                      |v $ %{} :Leaf (:at 1553495294960) (:by |B1y7Rc-Zz) (:text |40)
                      |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:on-click)
                          |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |e)
                                  |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |d!)
                              |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629786372463) (:by |B1y7Rc-Zz) (:text |&doseq)
                                  |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |command)
                                      |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |vals)
                                          |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:commands)
                                              |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |workflow)
                                  |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:effect/run)
                                      |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:command)
                                              |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:code)
                                                  |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |command)
                                          |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:cwd)
                                              |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |join-path)
                                                  |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:base-dir)
                                                      |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |workflow)
                                                  |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:path)
                                                      |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |command)
                                          |v $ %{} :Expr (:at 1553451616063) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553451617403) (:by |B1y7Rc-Zz) (:text |:title)
                                              |j $ %{} :Expr (:at 1553451620107) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1553451621230) (:by |B1y7Rc-Zz) (:text |:title)
                                                  |T $ %{} :Leaf (:at 1553451619950) (:by |B1y7Rc-Zz) (:text |command)
                  |r $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |<>)
                      |j $ %{} :Expr (:at 1553451006350) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |:name)
                          |j $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |workflow)
        |comp-command-editor $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099174710) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |comp-command-editor)
              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                  |v $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-command)
                  |x $ %{} :Leaf (:at 1553402199381) (:by |B1y7Rc-Zz) (:text |on-submit)
              |v $ %{} :Expr (:at 1539099174710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629790216750) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790218830) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629790219117) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790220673) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629790221797) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |some?)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-command)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |select-keys)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-command)
                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:code)
                                          |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:path)
                                          |v $ %{} :Leaf (:at 1553447634735) (:by |B1y7Rc-Zz) (:text |:title)
                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                      |b $ %{} :Expr (:at 1553401267232) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553401269853) (:by |B1y7Rc-Zz) (:text |:title)
                                          |j $ %{} :Leaf (:at 1553401270702) (:by |B1y7Rc-Zz) (:text "|\"")
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:code)
                                          |j $ %{} :Leaf (:at 1553401272425) (:by |B1y7Rc-Zz) (:text "|\"")
                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:path)
                                          |j $ %{} :Leaf (:at 1553401274393) (:by |B1y7Rc-Zz) (:text "|\"./")
                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1553401222755) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553401226423) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1676245333407) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1676245334358) (:by |B1y7Rc-Zz) (:text |merge)
                                  |T $ %{} :Leaf (:at 1553401232440) (:by |B1y7Rc-Zz) (:text |ui/column)
                                  |b $ %{} :Expr (:at 1676245335049) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1676245335352) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1676245335738) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1676245338733) (:by |B1y7Rc-Zz) (:text |:padding)
                                          |b $ %{} :Leaf (:at 1676245350034) (:by |B1y7Rc-Zz) (:text "|\"0 16px 16px")
                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1553401203547) (:by |B1y7Rc-Zz) (:text "|\"Command")
                              |r $ %{} :Expr (:at 1553401204317) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401204691) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1553447648269) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553447651229) (:by |B1y7Rc-Zz) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1553447685331) (:by |B1y7Rc-Zz) (:text |16)
                                  |v $ %{} :Expr (:at 1553447683503) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553447683503) (:by |B1y7Rc-Zz) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1553447688627) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                      |rT $ %{} :Expr (:at 1553401244667) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553401244667) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1553401244667) (:by |B1y7Rc-Zz) (:text |nil)
                          |r $ %{} :Leaf (:at 1553401244667) (:by |B1y7Rc-Zz) (:text |8)
                      |s $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |input)
                          |j $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |merge)
                                      |j $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |ui/input)
                                      |r $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |:width)
                                              |j $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |320)
                                          |r $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |:font-family)
                                              |j $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                              |q $ %{} :Expr (:at 1553401285762) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401287933) (:by |B1y7Rc-Zz) (:text |:value)
                                  |j $ %{} :Expr (:at 1553401288144) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553401289061) (:by |B1y7Rc-Zz) (:text |:title)
                                      |j $ %{} :Leaf (:at 1553401289999) (:by |B1y7Rc-Zz) (:text |state)
                              |t $ %{} :Expr (:at 1553401291489) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401295170) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                  |j $ %{} :Leaf (:at 1553447573040) (:by |B1y7Rc-Zz) (:text "|\"title...")
                              |x $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |:on-input)
                                  |j $ %{} :Expr (:at 1629790227118) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629790227859) (:by |B1y7Rc-Zz) (:text |fn)
                                      |L $ %{} :Expr (:at 1629790228310) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790230198) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629790230938) (:by |B1y7Rc-Zz) (:text |d!)
                                      |T $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790225311) (:by |B1y7Rc-Zz) (:text |d!)
                                          |b $ %{} :Leaf (:at 1629790226563) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |j $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1553401308809) (:by |B1y7Rc-Zz) (:text |:title)
                                              |v $ %{} :Expr (:at 1553401237213) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553401237213) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1629790264223) (:by |B1y7Rc-Zz) (:text |e)
                      |t $ %{} :Expr (:at 1553401180401) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553401197588) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1553401189217) (:by |B1y7Rc-Zz) (:text |nil)
                          |r $ %{} :Leaf (:at 1553401189467) (:by |B1y7Rc-Zz) (:text |8)
                      |v $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |input)
                          |j $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |merge)
                                      |j $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |ui/input)
                                      |r $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:width)
                                              |j $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |320)
                                          |r $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:font-family)
                                              |j $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                              |r $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:value)
                                  |j $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:code)
                                      |j $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |state)
                              |v $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                  |j $ %{} :Leaf (:at 1553401299129) (:by |B1y7Rc-Zz) (:text "|\"Command code")
                              |x $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:on-input)
                                  |j $ %{} :Expr (:at 1629790236798) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629790237454) (:by |B1y7Rc-Zz) (:text |fn)
                                      |L $ %{} :Expr (:at 1629790237799) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790238857) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629790239761) (:by |B1y7Rc-Zz) (:text |d!)
                                      |T $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790233365) (:by |B1y7Rc-Zz) (:text |d!)
                                          |b $ %{} :Leaf (:at 1629790236083) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |j $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:code)
                                              |v $ %{} :Expr (:at 1553401220914) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553401220914) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1629790263167) (:by |B1y7Rc-Zz) (:text |e)
                      |x $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1553401247171) (:by |B1y7Rc-Zz) (:text |8)
                      |y $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |input)
                          |j $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |merge)
                                      |j $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |ui/input)
                                      |r $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:width)
                                              |j $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |320)
                                          |r $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:font-family)
                                              |j $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                              |r $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:value)
                                  |j $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:path)
                                      |j $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |state)
                              |v $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                  |j $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text "||Command path")
                              |x $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:on-input)
                                  |j $ %{} :Expr (:at 1629790244260) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629790245006) (:by |B1y7Rc-Zz) (:text |fn)
                                      |L $ %{} :Expr (:at 1629790245422) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790245823) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629790246627) (:by |B1y7Rc-Zz) (:text |d!)
                                      |T $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790242447) (:by |B1y7Rc-Zz) (:text |d!)
                                          |b $ %{} :Leaf (:at 1629790243649) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |j $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:path)
                                              |v $ %{} :Expr (:at 1553401250182) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553401250182) (:by |B1y7Rc-Zz) (:text |:value)
                                                  |j $ %{} :Leaf (:at 1629790261761) (:by |B1y7Rc-Zz) (:text |e)
                      |yT $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |16)
                      |yj $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/row-parted)
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |span)
                              |j $ %{} :Leaf (:at 1553401254778) (:by |B1y7Rc-Zz) (:text |nil)
                          |v $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |style/button)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |d!)
                                          |n $ %{} :Expr (:at 1553402202344) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553402203928) (:by |B1y7Rc-Zz) (:text |on-submit)
                                              |j $ %{} :Leaf (:at 1553402208058) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1553402211151) (:by |B1y7Rc-Zz) (:text |d!)
                                          |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |L $ %{} :Leaf (:at 1629790255525) (:by |B1y7Rc-Zz) (:text |d!)
                                              |X $ %{} :Leaf (:at 1629790257507) (:by |B1y7Rc-Zz) (:text |cursor)
                                              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1553401323706) (:by |B1y7Rc-Zz) (:text ||Submit)
        |comp-command-row $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553365714652) (:by |B1y7Rc-Zz) (:text |defcomp)
              |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |comp-command-row)
              |n $ %{} :Expr (:at 1553365717099) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1553365737062) (:by |B1y7Rc-Zz) (:text |states)
                  |T $ %{} :Leaf (:at 1553365716909) (:by |B1y7Rc-Zz) (:text |command)
                  |j $ %{} :Leaf (:at 1553365745154) (:by |B1y7Rc-Zz) (:text |workflow-id)
              |r $ %{} :Expr (:at 1629789564017) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629789564799) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1629789565084) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629789604186) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789607509) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629789608251) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789609765) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629789611131) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1629789565240) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789566018) (:by |B1y7Rc-Zz) (:text |state)
                          |j $ %{} :Expr (:at 1629789596264) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789597023) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629789597308) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789597958) (:by |B1y7Rc-Zz) (:text |:data)
                                  |j $ %{} :Leaf (:at 1629789598737) (:by |B1y7Rc-Zz) (:text |states)
                              |r $ %{} :Expr (:at 1629789599459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789600341) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629789600620) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789601760) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1629789602982) (:by |B1y7Rc-Zz) (:text |false)
                      |j $ %{} :Expr (:at 1629789793209) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789795678) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                          |j $ %{} :Expr (:at 1629789804515) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789808104) (:by |B1y7Rc-Zz) (:text |use-confirm)
                              |j $ %{} :Expr (:at 1629789830504) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789830975) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629789832683) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629789833784) (:by |B1y7Rc-Zz) (:text |:remove)
                              |r $ %{} :Expr (:at 1629789834742) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789849537) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1553447033397) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1553447034253) (:by |B1y7Rc-Zz) (:text |div)
                      |L $ %{} :Expr (:at 1553447034534) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553447035389) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1553447035678) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553447036450) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |style-command-row)
                      |P $ %{} :Expr (:at 1553447079968) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1553447080727) (:by |B1y7Rc-Zz) (:text |div)
                          |L $ %{} :Expr (:at 1553447080976) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553447081283) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553447081687) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553447083468) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Leaf (:at 1553447471087) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                          |T $ %{} :Expr (:at 1559191511785) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1559191512598) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1559191512736) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1559191514227) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1559191514568) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1559191516049) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1559191518737) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                              |T $ %{} :Expr (:at 1553447043183) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553447043183) (:by |B1y7Rc-Zz) (:text |<>)
                                  |j $ %{} :Expr (:at 1553447043183) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553447043183) (:by |B1y7Rc-Zz) (:text |or)
                                      |j $ %{} :Expr (:at 1553447043183) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553447043183) (:by |B1y7Rc-Zz) (:text |:title)
                                          |j $ %{} :Leaf (:at 1553447043183) (:by |B1y7Rc-Zz) (:text |command)
                                      |r $ %{} :Leaf (:at 1553447043183) (:by |B1y7Rc-Zz) (:text "|\"Task")
                                  |r $ %{} :Expr (:at 1553447177278) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553447177664) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1553447177966) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553447698718) (:by |B1y7Rc-Zz) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1553447702106) (:by |B1y7Rc-Zz) (:text |20)
                              |b $ %{} :Expr (:at 1559191794304) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1559191795277) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1559191795631) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1559191796206) (:by |B1y7Rc-Zz) (:text |nil)
                              |j $ %{} :Expr (:at 1559191522188) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1559191533265) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |j $ %{} :Leaf (:at 1559191786157) (:by |B1y7Rc-Zz) (:text |:play)
                                  |r $ %{} :Expr (:at 1559191538874) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1559191539238) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1559191539528) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1559191541466) (:by |B1y7Rc-Zz) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1559191542212) (:by |B1y7Rc-Zz) (:text |14)
                                      |r $ %{} :Expr (:at 1559191542725) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1559191554185) (:by |B1y7Rc-Zz) (:text |:cursor)
                                          |j $ %{} :Leaf (:at 1559191557621) (:by |B1y7Rc-Zz) (:text |:pointer)
                                      |v $ %{} :Expr (:at 1559191558013) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1559191602295) (:by |B1y7Rc-Zz) (:text |:color)
                                          |j $ %{} :Expr (:at 1559191602899) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1559191605113) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1559191605671) (:by |B1y7Rc-Zz) (:text |200)
                                              |r $ %{} :Leaf (:at 1559191606363) (:by |B1y7Rc-Zz) (:text |80)
                                              |v $ %{} :Leaf (:at 1559191607199) (:by |B1y7Rc-Zz) (:text |70)
                                  |v $ %{} :Expr (:at 1559191560630) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1559191561138) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1559191561415) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1559191561681) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1559191562164) (:by |B1y7Rc-Zz) (:text |d!)
                                          |r $ %{} :Leaf (:at 1559191563170) (:by |B1y7Rc-Zz) (:text |m!)
                                      |r $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1559191750372) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1559191564562) (:by |B1y7Rc-Zz) (:text |:effect/run)
                                          |r $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1559191564562) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1559191564562) (:by |B1y7Rc-Zz) (:text |:cwd)
                                                  |j $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1559191579708) (:by |B1y7Rc-Zz) (:text |:path)
                                                      |j $ %{} :Leaf (:at 1559191584224) (:by |B1y7Rc-Zz) (:text |command)
                                              |r $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1559191564562) (:by |B1y7Rc-Zz) (:text |:command)
                                                  |j $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1559191597609) (:by |B1y7Rc-Zz) (:text |:code)
                                                      |j $ %{} :Leaf (:at 1559191586502) (:by |B1y7Rc-Zz) (:text |command)
                                              |v $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1559191564562) (:by |B1y7Rc-Zz) (:text |:title)
                                                  |j $ %{} :Expr (:at 1559191564562) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1559191596094) (:by |B1y7Rc-Zz) (:text |:title)
                                                      |j $ %{} :Leaf (:at 1559191587236) (:by |B1y7Rc-Zz) (:text |command)
                          |j $ %{} :Expr (:at 1553447474834) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1553447475593) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1553447475809) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553447476155) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553447476346) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553447477125) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1553447481004) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                              |T $ %{} :Expr (:at 1629789668344) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789670478) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |j $ %{} :Leaf (:at 1629789668344) (:by |B1y7Rc-Zz) (:text |:edit-2)
                                  |r $ %{} :Expr (:at 1629789671439) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629789674597) (:by |B1y7Rc-Zz) (:text |&{})
                                      |L $ %{} :Leaf (:at 1684126975097) (:by |B1y7Rc-Zz) (:text |:font-size)
                                      |T $ %{} :Leaf (:at 1629789678040) (:by |B1y7Rc-Zz) (:text |14)
                                      |j $ %{} :Leaf (:at 1629789681976) (:by |B1y7Rc-Zz) (:text |:color)
                                      |r $ %{} :Expr (:at 1629789683416) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789683416) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1629789683416) (:by |B1y7Rc-Zz) (:text |200)
                                          |r $ %{} :Leaf (:at 1629789683416) (:by |B1y7Rc-Zz) (:text |80)
                                          |v $ %{} :Leaf (:at 1629789683416) (:by |B1y7Rc-Zz) (:text |60)
                                      |v $ %{} :Leaf (:at 1629789702854) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |x $ %{} :Leaf (:at 1629789705762) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |v $ %{} :Expr (:at 1629789709909) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789710210) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629789710633) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789711275) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629789712004) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789715382) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789715382) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629789715382) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629789715382) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789715382) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629789715382) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629789715382) (:by |B1y7Rc-Zz) (:text |:pop?)
                                              |v $ %{} :Leaf (:at 1629789718692) (:by |B1y7Rc-Zz) (:text |true)
                              |b $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |comp-modal)
                                  |j $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |:title)
                                          |j $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text ||Demo)
                                      |r $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |400)
                                      |v $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |:container-style)
                                          |j $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |{})
                                      |x $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |:render)
                                          |j $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629789629712) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789629712) (:by |B1y7Rc-Zz) (:text |on-close)
                                              |r $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |comp-command-editor)
                                                  |j $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |>>)
                                                      |j $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |states)
                                                      |r $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |:edit-command)
                                                  |r $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |command)
                                                  |v $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |j $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |command-draft)
                                                          |j $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |r $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |m!)
                                                      |r $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |j $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |:workflow/edit-command)
                                                          |r $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |[])
                                                              |j $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |workflow-id)
                                                              |r $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |:id)
                                                                  |j $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |command)
                                                              |v $ %{} :Leaf (:at 1629789651606) (:by |B1y7Rc-Zz) (:text |command-draft)
                                                      |v $ %{} :Expr (:at 1629789651606) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629789655922) (:by |B1y7Rc-Zz) (:text |on-close)
                                  |r $ %{} :Expr (:at 1629789639122) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789642199) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1629789645358) (:by |B1y7Rc-Zz) (:text |state)
                                  |v $ %{} :Expr (:at 1629789634103) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789634103) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629789634103) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789634103) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789634103) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789634103) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629789634103) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629789634103) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789634103) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629789634103) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629789636672) (:by |B1y7Rc-Zz) (:text |:pop?)
                                              |v $ %{} :Leaf (:at 1629789634103) (:by |B1y7Rc-Zz) (:text |false)
                              |j $ %{} :Expr (:at 1553447483499) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553447483499) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1553447483499) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1553447483499) (:by |B1y7Rc-Zz) (:text |nil)
                              |n $ %{} :Expr (:at 1629789865577) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789867414) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |j $ %{} :Leaf (:at 1629789865577) (:by |B1y7Rc-Zz) (:text |:x)
                                  |r $ %{} :Expr (:at 1629789868658) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629789870764) (:by |B1y7Rc-Zz) (:text |&{})
                                      |L $ %{} :Leaf (:at 1629789873316) (:by |B1y7Rc-Zz) (:text |:font-size)
                                      |T $ %{} :Leaf (:at 1629789865577) (:by |B1y7Rc-Zz) (:text |18)
                                      |j $ %{} :Leaf (:at 1629789874945) (:by |B1y7Rc-Zz) (:text |:color)
                                      |r $ %{} :Expr (:at 1629789877419) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789877419) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1629789877419) (:by |B1y7Rc-Zz) (:text |0)
                                          |r $ %{} :Leaf (:at 1629789877419) (:by |B1y7Rc-Zz) (:text |80)
                                          |v $ %{} :Leaf (:at 1629789877419) (:by |B1y7Rc-Zz) (:text |60)
                                      |v $ %{} :Leaf (:at 1629789880164) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |x $ %{} :Leaf (:at 1629789882551) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |v $ %{} :Expr (:at 1629789883963) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789884336) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629789884616) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789884783) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629789885312) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789887523) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1684127122737) (:by |B1y7Rc-Zz) (:text |.show)
                                          |j $ %{} :Leaf (:at 1629789892923) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                                          |r $ %{} :Leaf (:at 1629789894520) (:by |B1y7Rc-Zz) (:text |d!)
                                          |v $ %{} :Expr (:at 1629789894920) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789895172) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629789895431) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                              |r $ %{} :Expr (:at 1629789898745) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789898745) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629789898745) (:by |B1y7Rc-Zz) (:text |:workflow/remove-command)
                                                  |r $ %{} :Expr (:at 1629789898745) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789898745) (:by |B1y7Rc-Zz) (:text |[])
                                                      |j $ %{} :Leaf (:at 1629789898745) (:by |B1y7Rc-Zz) (:text |workflow-id)
                                                      |r $ %{} :Expr (:at 1629789898745) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629789898745) (:by |B1y7Rc-Zz) (:text |:id)
                                                          |j $ %{} :Leaf (:at 1629789898745) (:by |B1y7Rc-Zz) (:text |command)
                      |T $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |div)
                          |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1553400809477) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1553400812721) (:by |B1y7Rc-Zz) (:text |merge)
                                      |L $ %{} :Leaf (:at 1553400815415) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                                      |T $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:font-family)
                                              |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                          |r $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |<>)
                              |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:path)
                                  |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |command)
                              |r $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:display)
                                      |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:inline-block)
                                  |r $ %{} :Expr (:at 1553449739097) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553449739097) (:by |B1y7Rc-Zz) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1553449739097) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553449739097) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1553449739097) (:by |B1y7Rc-Zz) (:text |0)
                                          |r $ %{} :Leaf (:at 1553449739097) (:by |B1y7Rc-Zz) (:text |0)
                                          |v $ %{} :Leaf (:at 1553449739097) (:by |B1y7Rc-Zz) (:text |100)
                                          |x $ %{} :Leaf (:at 1553449739097) (:by |B1y7Rc-Zz) (:text |0.2)
                                  |v $ %{} :Expr (:at 1553449745535) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553449745535) (:by |B1y7Rc-Zz) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1553449745535) (:by |B1y7Rc-Zz) (:text "||0 8px")
                          |v $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |=<)
                              |j $ %{} :Leaf (:at 1553447545628) (:by |B1y7Rc-Zz) (:text |24)
                              |r $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |nil)
                          |x $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |<>)
                              |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:code)
                                  |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |command)
                              |r $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |0)
                                          |r $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |0)
                                          |v $ %{} :Leaf (:at 1553449721418) (:by |B1y7Rc-Zz) (:text |100)
                                          |x $ %{} :Leaf (:at 1553449726625) (:by |B1y7Rc-Zz) (:text |0.2)
                                  |r $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text "||0 8px")
                                  |v $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:display)
                                      |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:inline-block)
                                  |x $ %{} :Expr (:at 1553365712832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |:min-width)
                                      |j $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |320)
                      |j $ %{} :Expr (:at 1629789853743) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789854679) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1629789855583) (:by |B1y7Rc-Zz) (:text |remove-plugin)
        |style-command-row $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |style-command-row)
              |r $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |merge)
                  |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |ui/column)
                  |r $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:border)
                          |j $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |str)
                              |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                              |r $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |0)
                                  |r $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |0)
                                  |v $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |100)
                                  |x $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |0.3)
                      |r $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:border-radius)
                          |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text "|\"4px")
                      |v $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:padding)
                          |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text "|\"8px 8px")
                      |x $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:width)
                          |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |600)
                      |y $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:min-width)
                          |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:max-content)
                      |yT $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:margin)
                          |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text "|\"16px 8px")
                      |yj $ %{} :Expr (:at 1629789589483) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:color)
                          |j $ %{} :Leaf (:at 1629789589483) (:by |B1y7Rc-Zz) (:text |:white)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539098935292) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |app.comp.command)
            |r $ %{} :Expr (:at 1539098935292) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539098935292) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629786379990) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539098935292) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1539098935292) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1539098935292) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1553327423045) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539098935292) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |defcomp)
                        |w $ %{} :Leaf (:at 1629786385551) (:by |B1y7Rc-Zz) (:text |>>)
                        |x $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |<>)
                        |y $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |div)
                        |yj $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |input)
                        |yr $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |button)
                        |yv $ %{} :Leaf (:at 1553400134441) (:by |B1y7Rc-Zz) (:text |a)
                |yT $ %{} :Expr (:at 1539098935292) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539098935292) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539098935292) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1553400086017) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553400086017) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553400086017) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1553400086017) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553400086017) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553400086017) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553400086017) (:by |B1y7Rc-Zz) (:text |comp-i)
                        |r $ %{} :Leaf (:at 1559191530534) (:by |B1y7Rc-Zz) (:text |comp-icon)
                |yt $ %{} :Expr (:at 1553400650197) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553400650524) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1629789826977) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1553400657792) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553400662706) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553400664155) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1629789819976) (:by |B1y7Rc-Zz) (:text |use-confirm)
                        |r $ %{} :Leaf (:at 1629789823130) (:by |B1y7Rc-Zz) (:text |comp-modal)
                |yv $ %{} :Expr (:at 1553400094926) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553400094926) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553400094926) (:by |B1y7Rc-Zz) (:text |app.style)
                    |r $ %{} :Leaf (:at 1553400094926) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1553400094926) (:by |B1y7Rc-Zz) (:text |style)
                |yx $ %{} :Expr (:at 1553451057726) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553451057726) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553451057726) (:by |B1y7Rc-Zz) (:text |app.util)
                    |r $ %{} :Leaf (:at 1553451057726) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553451057726) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553451057726) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553451057726) (:by |B1y7Rc-Zz) (:text |join-path)
    |app.comp.container $ %{} :FileEntry
      :defs $ {}
        |comp-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-container)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |session)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1525106928554) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525106929232) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1525106929915) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525106930860) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1525106931558) (:by |root) (:text |store)
                      |v $ %{} :Expr (:at 1525106933346) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1525106935393) (:by |root) (:text |router-data)
                          |j $ %{} :Expr (:at 1525106935675) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1525106936827) (:by |root) (:text |:data)
                              |j $ %{} :Leaf (:at 1525106937665) (:by |root) (:text |router)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil?)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                      |r $ %{} :Expr (:at 1521951403873) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1521951417580) (:by |root) (:text |comp-offline)
                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548406618) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1700717098868) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1700717101506) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                      |L $ %{} :Leaf (:at 1700717102966) (:by |B1y7Rc-Zz) (:text |css/global)
                                      |P $ %{} :Leaf (:at 1700717117642) (:by |B1y7Rc-Zz) (:text |css/fullscreen)
                                      |R $ %{} :Leaf (:at 1700717127253) (:by |B1y7Rc-Zz) (:text |css/column)
                                      |T $ %{} :Leaf (:at 1686548410400) (:by |B1y7Rc-Zz) (:text |css-container)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1523120265747) (:by |root) (:text |comp-navigation)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |n $ %{} :Leaf (:at 1539195701109) (:by |root) (:text |router)
                              |r $ %{} :Expr (:at 1523120353961) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120357277) (:by |root) (:text |:count)
                                  |j $ %{} :Leaf (:at 1523120358953) (:by |root) (:text |store)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                              |r $ %{} :Expr (:at 1539098971823) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |let)
                                  |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router)
                                          |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:router)
                                              |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |store)
                                      |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router-data)
                                          |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:data)
                                              |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router)
                                  |r $ %{} :Expr (:at 1539098971823) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629784982968) (:by |B1y7Rc-Zz) (:text |case-default)
                                      |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:name)
                                          |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router)
                                      |n $ %{} :Expr (:at 1629784983926) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629784983926) (:by |B1y7Rc-Zz) (:text |comp-missing)
                                          |j $ %{} :Leaf (:at 1629784983926) (:by |B1y7Rc-Zz) (:text |router)
                                      |r $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:profile)
                                          |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |comp-profile)
                                              |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:user)
                                                  |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |store)
                                              |r $ %{} :Leaf (:at 1539099405218) (:by |root) (:text |router-data)
                                      |v $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:home)
                                          |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |comp-home)
                                              |b $ %{} :Expr (:at 1629784993936) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629784994613) (:by |B1y7Rc-Zz) (:text |>>)
                                                  |T $ %{} :Leaf (:at 1554224789067) (:by |root) (:text |states)
                                                  |j $ %{} :Leaf (:at 1629784995226) (:by |B1y7Rc-Zz) (:text |:home)
                                              |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router-data)
                                      |x $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:workflows)
                                          |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                            :data $ {}
                                              |r $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |comp-workflow-container)
                                              |v $ %{} :Expr (:at 1629784999523) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629785000819) (:by |B1y7Rc-Zz) (:text |>>)
                                                  |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |states)
                                                  |j $ %{} :Leaf (:at 1629785001487) (:by |B1y7Rc-Zz) (:text |:workflows)
                                              |x $ %{} :Expr (:at 1539098971823) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:workflows)
                                                  |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router-data)
                                      |y $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:history)
                                          |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |comp-history)
                                              |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:histories)
                                                  |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router-data)
                                      |yT $ %{} :Expr (:at 1539098971823) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |:process)
                                          |j $ %{} :Expr (:at 1539098971823) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |comp-process-detail)
                                              |b $ %{} :Expr (:at 1686547853792) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686547854217) (:by |B1y7Rc-Zz) (:text |>>)
                                                  |b $ %{} :Leaf (:at 1686547856812) (:by |B1y7Rc-Zz) (:text |states)
                                                  |h $ %{} :Leaf (:at 1686547865180) (:by |B1y7Rc-Zz) (:text |:detail)
                                              |j $ %{} :Leaf (:at 1539098971823) (:by |root) (:text |router-data)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                          |w $ %{} :Expr (:at 1524279203814) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524279211924) (:by |root) (:text |comp-status-color)
                              |j $ %{} :Expr (:at 1524279213788) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524279214588) (:by |root) (:text |:color)
                                  |j $ %{} :Leaf (:at 1524279215366) (:by |root) (:text |store)
                          |x $ %{} :Expr (:at 1521911488967) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911509225) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911495407) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Store)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:bottom)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |0)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:left)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |0)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:max-width)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||100%)
                          |y $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529230769433) (:by |root) (:text |comp-messages)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:session)
                                      |r $ %{} :Leaf (:at 1529230765972) (:by |root) (:text |:messages)
                              |n $ %{} :Expr (:at 1529230771518) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529230771976) (:by |root) (:text |{})
                              |p $ %{} :Expr (:at 1529230772453) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1529230773090) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1529230773925) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529230775135) (:by |root) (:text |info)
                                      |j $ %{} :Leaf (:at 1529230778336) (:by |root) (:text |d!)
                                  |r $ %{} :Expr (:at 1529230780551) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1529230781631) (:by |root) (:text |d!)
                                      |j $ %{} :Leaf (:at 1529231458145) (:by |root) (:text |:session/remove-message)
                                      |r $ %{} :Leaf (:at 1529230813335) (:by |root) (:text |info)
                          |yT $ %{} :Expr (:at 1521911502552) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1521911507241) (:by |root) (:text |when)
                              |L $ %{} :Leaf (:at 1521911504664) (:by |root) (:text |dev?)
                              |T $ %{} :Expr (:at 1507828710405) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507828712159) (:by |root) (:text |comp-reel)
                                  |j $ %{} :Expr (:at 1507829101137) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830262253) (:by |root) (:text |:reel-length)
                                      |j $ %{} :Leaf (:at 1507829104010) (:by |root) (:text |store)
                                  |r $ %{} :Expr (:at 1507828721052) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507828722268) (:by |root) (:text |{})
        |comp-offline $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519314599832) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521951399872) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |comp-offline)
              |n $ %{} :Expr (:at 1521951400852) (:by |root)
                :data $ {}
              |r $ %{} :Expr (:at 1519314599832) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/global)
                              |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |ui/fullscreen)
                              |v $ %{} :Leaf (:at 1535564672966) (:by |B1y7Rc-Zz) (:text |ui/column-dispersive)
                              |x $ %{} :Expr (:at 1535565529682) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535565530129) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535565530397) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565536637) (:by |B1y7Rc-Zz) (:text |:background-color)
                                      |j $ %{} :Expr (:at 1535565541430) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535565542473) (:by |B1y7Rc-Zz) (:text |:theme)
                                          |j $ %{} :Leaf (:at 1535565546181) (:by |B1y7Rc-Zz) (:text |config/site)
                  |l $ %{} :Expr (:at 1535564983624) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565362594) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564984947) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564985316) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564985627) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564987644) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535565371727) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1535565373172) (:by |B1y7Rc-Zz) (:text |{})
                                  |T $ %{} :Expr (:at 1535564988232) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564988883) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535565472380) (:by |B1y7Rc-Zz) (:text |0)
                  |n $ %{} :Expr (:at 1535564675845) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535564681122) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1535564681371) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1535564681741) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1535564681981) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1535564682940) (:by |B1y7Rc-Zz) (:text |:style)
                              |j $ %{} :Expr (:at 1535564683257) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1535564683549) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1535564683815) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564692026) (:by |B1y7Rc-Zz) (:text |:background-image)
                                      |j $ %{} :Expr (:at 1535564692507) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1535564693703) (:by |B1y7Rc-Zz) (:text |str)
                                          |j $ %{} :Leaf (:at 1535564698133) (:by |B1y7Rc-Zz) (:text "|\"url(")
                                          |n $ %{} :Expr (:at 1535564699933) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1535564708041) (:by |B1y7Rc-Zz) (:text |:icon)
                                              |j $ %{} :Leaf (:at 1535564775736) (:by |B1y7Rc-Zz) (:text |config/site)
                                          |r $ %{} :Leaf (:at 1535564696349) (:by |B1y7Rc-Zz) (:text "|\")")
                                  |r $ %{} :Expr (:at 1535564726919) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564728738) (:by |B1y7Rc-Zz) (:text |:width)
                                      |j $ %{} :Leaf (:at 1535565090611) (:by |B1y7Rc-Zz) (:text |128)
                                  |v $ %{} :Expr (:at 1535564733832) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564736588) (:by |B1y7Rc-Zz) (:text |:height)
                                      |j $ %{} :Leaf (:at 1535565093711) (:by |B1y7Rc-Zz) (:text |128)
                                  |x $ %{} :Expr (:at 1535564741439) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535564745512) (:by |B1y7Rc-Zz) (:text |:background-size)
                                      |j $ %{} :Leaf (:at 1535564749164) (:by |B1y7Rc-Zz) (:text |:contain)
                  |r $ %{} :Expr (:at 1519314599832) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565436682) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:pointer)
                                  |r $ %{} :Expr (:at 1535565239666) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1535565243041) (:by |B1y7Rc-Zz) (:text |:line-height)
                                      |j $ %{} :Leaf (:at 1535565498969) (:by |B1y7Rc-Zz) (:text "|\"32px")
                          |r $ %{} :Expr (:at 1519314599832) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1629784928869) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629784929430) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1629784929695) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629784930081) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629784930735) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1519314599832) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629784928223) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |:effect/connect)
                                      |r $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |nil)
                      |r $ %{} :Expr (:at 1519314599832) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519314599832) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1535564856884) (:by |B1y7Rc-Zz) (:text "||No connection...")
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1535565688657) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:font-size)
                                  |j $ %{} :Leaf (:at 1535565156897) (:by |B1y7Rc-Zz) (:text |24)
        |comp-status-color $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524279216692) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1524279218316) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1524279216692) (:by |root) (:text |comp-status-color)
              |r $ %{} :Expr (:at 1524279216692) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279220380) (:by |root) (:text |color)
              |v $ %{} :Expr (:at 1524279221052) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524279221503) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1524279221753) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524279222145) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1524279222434) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548734315) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1686548737992) (:by |B1y7Rc-Zz) (:text |css-status)
                      |n $ %{} :Expr (:at 1686548754169) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548756195) (:by |B1y7Rc-Zz) (:text |:style)
                          |b $ %{} :Expr (:at 1686548756957) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1686548757937) (:by |B1y7Rc-Zz) (:text |{})
                              |T $ %{} :Expr (:at 1686548756599) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548756599) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |b $ %{} :Leaf (:at 1686548756599) (:by |B1y7Rc-Zz) (:text |color)
        |css-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548411264) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548412368) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548411264) (:by |B1y7Rc-Zz) (:text |css-container)
              |h $ %{} :Expr (:at 1686548413682) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548414213) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548414685) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548415910) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548413441) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548413441) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1686548413441) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548413441) (:by |B1y7Rc-Zz) (:text |:color)
                              |b $ %{} :Expr (:at 1686548413441) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548413441) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1686548413441) (:by |B1y7Rc-Zz) (:text |0)
                                  |h $ %{} :Leaf (:at 1686548413441) (:by |B1y7Rc-Zz) (:text |0)
                                  |l $ %{} :Leaf (:at 1686548413441) (:by |B1y7Rc-Zz) (:text |70)
        |css-status $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548738740) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548739949) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548738740) (:by |B1y7Rc-Zz) (:text |css-status)
              |h $ %{} :Expr (:at 1686548740841) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548741289) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548742145) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548743430) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |let)
                          |b $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |size)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |24)
                          |h $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:width)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |size)
                              |h $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:height)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |size)
                              |l $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:position)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:absolute)
                              |o $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:bottom)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |60)
                              |q $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:left)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |8)
                              |t $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:border-radius)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text "|\"50%")
                              |u $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:opacity)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |0.6)
                              |v $ %{} :Expr (:at 1686548740551) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:pointer-events)
                                  |b $ %{} :Leaf (:at 1686548740551) (:by |B1y7Rc-Zz) (:text |:none)
        |style-body $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |style-body)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:padding)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||8px 16px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.container)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629784921211) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |n $ %{} :Expr (:at 1700717106456) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1700717109522) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1700717109983) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1700717110581) (:by |B1y7Rc-Zz) (:text |css)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547378489) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553327434637) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1629790195090) (:by |B1y7Rc-Zz) (:text |>>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1507815955483) (:by |root) (:text |button)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |yD $ %{} :Expr (:at 1507816109319) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1507816117447) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1507816112686) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1507816113982) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1507816114704) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1523120275079) (:by |root) (:text |app.comp.navigation)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1523120276563) (:by |root) (:text |comp-navigation)
                |yj $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
                |yr $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.login)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
                |yv $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1529230826824) (:by |root) (:text |respo-message.comp.messages)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1529230829559) (:by |root) (:text |comp-messages)
                |yx $ %{} :Expr (:at 1553328394850) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553328394850) (:by |B1y7Rc-Zz) (:text |cumulo-reel.comp.reel)
                    |r $ %{} :Leaf (:at 1553328394850) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553328394850) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1553328394850) (:by |B1y7Rc-Zz) (:text |comp-reel)
                |yy $ %{} :Expr (:at 1521911479054) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1527789167264) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1521911483589) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1521911483778) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1521911485489) (:by |root) (:text |dev?)
                |yyj $ %{} :Expr (:at 1529230793085) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1529230796079) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529230796499) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529230797248) (:by |root) (:text |schema)
                |yyr $ %{} :Expr (:at 1535564714854) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1535564718729) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1535564719687) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1535564721387) (:by |B1y7Rc-Zz) (:text |config)
                |yyyyv $ %{} :Expr (:at 1539099004030) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |app.comp.missing)
                    |r $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099004030) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |comp-missing)
                |yyyyx $ %{} :Expr (:at 1539099004030) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |app.comp.home)
                    |r $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099004030) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |comp-home)
                |yyyyy $ %{} :Expr (:at 1539099004030) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |app.comp.workflow)
                    |r $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099004030) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |comp-workflow-container)
                |yyyyyT $ %{} :Expr (:at 1539099004030) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |app.comp.history)
                    |r $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099004030) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |comp-history)
                |yyyyyj $ %{} :Expr (:at 1539099004030) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |app.comp.process-detail)
                    |r $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099004030) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099004030) (:by |root) (:text |comp-process-detail)
                |z $ %{} :Expr (:at 1686548418180) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686548419233) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1686548419953) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1686548420188) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1686548422866) (:by |B1y7Rc-Zz) (:text |defstyle)
    |app.comp.history $ %{} :FileEntry
      :defs $ {}
        |comp-history $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099086648) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |comp-history)
              |r $ %{} :Expr (:at 1539099086648) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |histories)
              |v $ %{} :Expr (:at 1539099086648) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1539099086648) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1539099086648) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548692202) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1686548696635) (:by |B1y7Rc-Zz) (:text |css-history-page)
                  |n $ %{} :Expr (:at 1553536989610) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553536991652) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1553536991939) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553536992268) (:by |B1y7Rc-Zz) (:text |{})
                      |r $ %{} :Expr (:at 1553536994686) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553536997371) (:by |B1y7Rc-Zz) (:text |button)
                          |j $ %{} :Expr (:at 1553536997748) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553537000202) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553537001061) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548638064) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1686548639436) (:by |B1y7Rc-Zz) (:text |css/button)
                              |r $ %{} :Expr (:at 1553537015848) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553537018791) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                  |j $ %{} :Leaf (:at 1553537021241) (:by |B1y7Rc-Zz) (:text "|\"Clear")
                              |v $ %{} :Expr (:at 1553537117847) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553537121121) (:by |B1y7Rc-Zz) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1553537121461) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553537121718) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1553537122524) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553537122108) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1553537123236) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1553537124325) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553537125473) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1553537134352) (:by |B1y7Rc-Zz) (:text |:process/clear-history)
                                          |r $ %{} :Leaf (:at 1553537135312) (:by |B1y7Rc-Zz) (:text |nil)
                  |p $ %{} :Expr (:at 1553537167101) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553537168908) (:by |B1y7Rc-Zz) (:text |=<)
                      |j $ %{} :Leaf (:at 1553537169663) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Leaf (:at 1553537170381) (:by |B1y7Rc-Zz) (:text |16)
                  |r $ %{} :Expr (:at 1553450212962) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1553450213577) (:by |B1y7Rc-Zz) (:text |if)
                      |L $ %{} :Expr (:at 1553450214197) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553450216822) (:by |B1y7Rc-Zz) (:text |empty?)
                          |j $ %{} :Leaf (:at 1553450221762) (:by |B1y7Rc-Zz) (:text |histories)
                      |P $ %{} :Expr (:at 1553450222363) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553450232056) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Leaf (:at 1553450235084) (:by |B1y7Rc-Zz) (:text "|\"Empty")
                          |r $ %{} :Expr (:at 1553450235419) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553450235780) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553450235986) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553450238625) (:by |B1y7Rc-Zz) (:text |:font-family)
                                  |j $ %{} :Leaf (:at 1553450242251) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |r $ %{} :Expr (:at 1553450243008) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553450244317) (:by |B1y7Rc-Zz) (:text |:font-weight)
                                  |j $ %{} :Leaf (:at 1553450245770) (:by |B1y7Rc-Zz) (:text |100)
                              |v $ %{} :Expr (:at 1553450246655) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553450247496) (:by |B1y7Rc-Zz) (:text |:color)
                                  |j $ %{} :Leaf (:at 1553450248870) (:by |B1y7Rc-Zz) (:text |:white)
                      |T $ %{} :Expr (:at 1539099086648) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1539099086648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1553450861186) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553450862022) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1553450863634) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553450864382) (:by |B1y7Rc-Zz) (:text |merge)
                                      |j $ %{} :Leaf (:at 1553450865543) (:by |B1y7Rc-Zz) (:text |ui/flex)
                                      |r $ %{} :Expr (:at 1553450866601) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553450866992) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1553450867316) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553450870644) (:by |B1y7Rc-Zz) (:text |:overflow)
                                              |j $ %{} :Leaf (:at 1553450872750) (:by |B1y7Rc-Zz) (:text |:auto)
                                          |r $ %{} :Expr (:at 1553536970291) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553536972379) (:by |B1y7Rc-Zz) (:text |:padding)
                                              |j $ %{} :Leaf (:at 1553536983770) (:by |B1y7Rc-Zz) (:text "|\"16px 0 120px 0")
                          |r $ %{} :Expr (:at 1539099086648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789920476) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |histories)
                              |r $ %{} :Expr (:at 1539099086648) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789929511) (:by |B1y7Rc-Zz) (:text |map)
                                  |j $ %{} :Expr (:at 1539099086648) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1539099086648) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |history)
                                      |r $ %{} :Expr (:at 1539099086648) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |[])
                                          |j $ %{} :Expr (:at 1539099086648) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |:id)
                                              |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |history)
                                          |r $ %{} :Expr (:at 1539099086648) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |div)
                                              |j $ %{} :Expr (:at 1539099086648) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1553450795184) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686548597268) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                      |b $ %{} :Expr (:at 1700716984569) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1700716987242) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                                          |L $ %{} :Leaf (:at 1700716999229) (:by |B1y7Rc-Zz) (:text |css/row-middle)
                                                          |T $ %{} :Leaf (:at 1686548600189) (:by |B1y7Rc-Zz) (:text |css-history)
                                              |n $ %{} :Expr (:at 1553450532022) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553450532022) (:by |B1y7Rc-Zz) (:text |<>)
                                                  |j $ %{} :Expr (:at 1553450532022) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553450539653) (:by |B1y7Rc-Zz) (:text |->)
                                                      |j $ %{} :Expr (:at 1553450532022) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553450532022) (:by |B1y7Rc-Zz) (:text |:started-at)
                                                          |j $ %{} :Leaf (:at 1553450532022) (:by |B1y7Rc-Zz) (:text |history)
                                                      |r $ %{} :Leaf (:at 1553450540911) (:by |B1y7Rc-Zz) (:text |dayjs)
                                                      |v $ %{} :Expr (:at 1553450543776) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1700716830757) (:by |B1y7Rc-Zz) (:text |.!format)
                                                          |j $ %{} :Leaf (:at 1553450600588) (:by |B1y7Rc-Zz) (:text "|\"MM-DD HH:mm:ss")
                                                  |n $ %{} :Leaf (:at 1686548665481) (:by |B1y7Rc-Zz) (:text |css-date-text)
                                              |o $ %{} :Expr (:at 1553536008089) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553536008089) (:by |B1y7Rc-Zz) (:text |<>)
                                                  |j $ %{} :Expr (:at 1553536012961) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1553536013530) (:by |B1y7Rc-Zz) (:text |or)
                                                      |T $ %{} :Expr (:at 1553536008089) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553536012281) (:by |B1y7Rc-Zz) (:text |:title)
                                                          |j $ %{} :Leaf (:at 1553536008089) (:by |B1y7Rc-Zz) (:text |history)
                                                      |j $ %{} :Leaf (:at 1553536016134) (:by |B1y7Rc-Zz) (:text "|\"Task")
                                                  |r $ %{} :Expr (:at 1553536897220) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1553536898333) (:by |B1y7Rc-Zz) (:text |merge)
                                                      |T $ %{} :Leaf (:at 1553536008089) (:by |B1y7Rc-Zz) (:text |style/text)
                                                      |j $ %{} :Expr (:at 1553536898871) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553536899215) (:by |B1y7Rc-Zz) (:text |{})
                                                          |j $ %{} :Expr (:at 1553536899486) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553538160075) (:by |B1y7Rc-Zz) (:text |:min-width)
                                                              |j $ %{} :Leaf (:at 1553538217101) (:by |B1y7Rc-Zz) (:text |160)
                                              |y $ %{} :Expr (:at 1553450786828) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553450786828) (:by |B1y7Rc-Zz) (:text |<>)
                                                  |j $ %{} :Expr (:at 1553450786828) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553450786828) (:by |B1y7Rc-Zz) (:text |:command)
                                                      |j $ %{} :Leaf (:at 1553450786828) (:by |B1y7Rc-Zz) (:text |history)
                                                  |r $ %{} :Expr (:at 1553538192566) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1553538194030) (:by |B1y7Rc-Zz) (:text |merge)
                                                      |T $ %{} :Leaf (:at 1553450786828) (:by |B1y7Rc-Zz) (:text |style/text)
                                                      |j $ %{} :Expr (:at 1553538194874) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553538194874) (:by |B1y7Rc-Zz) (:text |{})
                                                          |j $ %{} :Expr (:at 1553538194874) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553538194874) (:by |B1y7Rc-Zz) (:text |:min-width)
                                                              |j $ %{} :Leaf (:at 1553538194874) (:by |B1y7Rc-Zz) (:text |160)
                                              |yT $ %{} :Expr (:at 1553538183910) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553538183910) (:by |B1y7Rc-Zz) (:text |<>)
                                                  |j $ %{} :Expr (:at 1553538183910) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553538183910) (:by |B1y7Rc-Zz) (:text |:cwd)
                                                      |j $ %{} :Leaf (:at 1553538183910) (:by |B1y7Rc-Zz) (:text |history)
                                                  |r $ %{} :Expr (:at 1553538183910) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553538183910) (:by |B1y7Rc-Zz) (:text |merge)
                                                      |j $ %{} :Leaf (:at 1553538183910) (:by |B1y7Rc-Zz) (:text |style/text)
        |css-date-text $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548665848) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548667155) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548665848) (:by |B1y7Rc-Zz) (:text |css-date-text)
              |h $ %{} :Expr (:at 1686548668172) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548668578) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548669056) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548670094) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548667778) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |style/text)
                          |h $ %{} :Expr (:at 1686548667778) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548667778) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |:font-size)
                                  |b $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |12)
                              |h $ %{} :Expr (:at 1686548667778) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |:color)
                                  |b $ %{} :Expr (:at 1686548667778) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686548667778) (:by |B1y7Rc-Zz) (:text |70)
        |css-history $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548600914) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548601932) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548600914) (:by |B1y7Rc-Zz) (:text |css-history)
              |h $ %{} :Expr (:at 1686548602760) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548603482) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548603903) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548605040) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:margin)
                              |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text "|\"0px")
                          |h $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:background-color)
                              |b $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |200)
                                  |h $ %{} :Leaf (:at 1700717057264) (:by |B1y7Rc-Zz) (:text |40)
                                  |l $ %{} :Leaf (:at 1700717053402) (:by |B1y7Rc-Zz) (:text |28)
                          |l $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text "|\"4px 8px")
                          |o $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:width)
                              |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |960)
                          |q $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:min-width)
                              |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:max-content)
                          |s $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:border-bottom)
                              |b $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |str)
                                  |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                  |h $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |0)
                                      |o $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |0.2)
                          |t $ %{} :Expr (:at 1686548602523) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:word-break)
                              |b $ %{} :Leaf (:at 1686548602523) (:by |B1y7Rc-Zz) (:text |:break-word)
                  |b $ %{} :Expr (:at 1700717062056) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1700717064558) (:by |B1y7Rc-Zz) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1700717064966) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1700717065283) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1700717066331) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1700717067683) (:by |B1y7Rc-Zz) (:text |:background-color)
                              |b $ %{} :Expr (:at 1700717067683) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700717067683) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1700717067683) (:by |B1y7Rc-Zz) (:text |200)
                                  |h $ %{} :Leaf (:at 1700717067683) (:by |B1y7Rc-Zz) (:text |40)
                                  |l $ %{} :Leaf (:at 1700717071107) (:by |B1y7Rc-Zz) (:text |32)
        |css-history-page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548696990) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548698535) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548696990) (:by |B1y7Rc-Zz) (:text |css-history-page)
              |h $ %{} :Expr (:at 1686548699406) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548699872) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548700222) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548701223) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548699147) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |ui/flex)
                          |h $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |ui/column)
                          |l $ %{} :Expr (:at 1686548699147) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548699147) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text "||16px 16px")
                              |h $ %{} :Expr (:at 1686548699147) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |:font-family)
                                  |b $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                              |l $ %{} :Expr (:at 1686548699147) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |:overflow)
                                  |b $ %{} :Leaf (:at 1686548699147) (:by |B1y7Rc-Zz) (:text |:auto)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099086648) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |app.comp.history)
            |r $ %{} :Expr (:at 1539099086648) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099086648) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629789911181) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099086648) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1539099086648) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1539099086648) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553327445028) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099086648) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1629789915187) (:by |B1y7Rc-Zz) (:text |>>)
                        |x $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |list->)
                        |y $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |div)
                        |yj $ %{} :Leaf (:at 1553537026928) (:by |B1y7Rc-Zz) (:text |button)
                |y $ %{} :Expr (:at 1539099086648) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099086648) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099086648) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1553450500207) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553450504911) (:by |B1y7Rc-Zz) (:text |app.style)
                    |r $ %{} :Leaf (:at 1553450506234) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1553450506904) (:by |B1y7Rc-Zz) (:text |style)
                |yj $ %{} :Expr (:at 1553450560806) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553450564302) (:by |B1y7Rc-Zz) (:text "|\"dayjs")
                    |r $ %{} :Leaf (:at 1629789913423) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1553450566602) (:by |B1y7Rc-Zz) (:text |dayjs)
                |z $ %{} :Expr (:at 1686548607116) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686548608222) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1686548609033) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1686548609247) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1686548610285) (:by |B1y7Rc-Zz) (:text |defstyle)
                |zD $ %{} :Expr (:at 1686548641599) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686548645793) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1686548646268) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1686548646962) (:by |B1y7Rc-Zz) (:text |css)
    |app.comp.home $ %{} :FileEntry
      :defs $ {}
        |comp-home $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099101998) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |comp-home)
              |r $ %{} :Expr (:at 1539099101998) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1554224801555) (:by |root) (:text |states)
                  |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |router-data)
              |v $ %{} :Expr (:at 1554225359895) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1554225360616) (:by |root) (:text |let)
                  |L $ %{} :Expr (:at 1554225360888) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629788587046) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629788589509) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629788589838) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629788648958) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629788649734) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1554225361292) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1554225371351) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1554225371640) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225373008) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1554225374847) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1554225375575) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1554225376369) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1554225377034) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1554225377423) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1554225377663) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1554225383084) (:by |root) (:text |:query)
                                      |j $ %{} :Leaf (:at 1554225386526) (:by |root) (:text "|\"")
                                  |r $ %{} :Expr (:at 1629788680318) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788730837) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1629797438792) (:by |B1y7Rc-Zz) (:text |false)
                  |T $ %{} :Expr (:at 1539099101998) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099101998) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539099101998) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547232378) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1686547236487) (:by |B1y7Rc-Zz) (:text |css-home)
                      |r $ %{} :Expr (:at 1539099101998) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099101998) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |{})
                              |b $ %{} :Expr (:at 1692169675959) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692169677351) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1692169681630) (:by |B1y7Rc-Zz) (:text |css/row-parted)
                              |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:align-items)
                                          |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:center)
                                      |r $ %{} :Expr (:at 1554259113712) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1554259114961) (:by |B1y7Rc-Zz) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1554259118924) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                          |r $ %{} :Expr (:at 1554224841808) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1554224844288) (:by |root) (:text |div)
                              |L $ %{} :Expr (:at 1554224844511) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1554224844861) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1554224845159) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1692169686775) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |T $ %{} :Expr (:at 1557042962224) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1692169694077) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                          |L $ %{} :Leaf (:at 1692169695530) (:by |B1y7Rc-Zz) (:text |css/flex)
                                          |T $ %{} :Leaf (:at 1692169697204) (:by |B1y7Rc-Zz) (:text |css/row-middle)
                              |P $ %{} :Expr (:at 1554224849199) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1554224857782) (:by |root) (:text |input)
                                  |j $ %{} :Expr (:at 1554224857985) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1554224858473) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1554224858717) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686547415669) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1686547413623) (:by |B1y7Rc-Zz) (:text |css-filter)
                                      |n $ %{} :Expr (:at 1686547418054) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686547418054) (:by |B1y7Rc-Zz) (:text |:placeholder)
                                          |b $ %{} :Leaf (:at 1686547418054) (:by |B1y7Rc-Zz) (:text "|\"filter...")
                                      |r $ %{} :Expr (:at 1554224862359) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1554224865094) (:by |root) (:text |:value)
                                          |j $ %{} :Expr (:at 1554225487121) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1554225488933) (:by |root) (:text |:query)
                                              |j $ %{} :Leaf (:at 1554225490165) (:by |root) (:text |state)
                                      |v $ %{} :Expr (:at 1554225491208) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1554225492944) (:by |root) (:text |:on-input)
                                          |j $ %{} :Expr (:at 1554225493182) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1554225493499) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1554225493789) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1554225493976) (:by |root) (:text |e)
                                                  |j $ %{} :Leaf (:at 1554225494776) (:by |root) (:text |d!)
                                              |r $ %{} :Expr (:at 1554225496702) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788594270) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1629788595321) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |j $ %{} :Expr (:at 1554225498321) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1554225501786) (:by |root) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1554225502698) (:by |root) (:text |state)
                                                      |r $ %{} :Leaf (:at 1554225503705) (:by |root) (:text |:query)
                                                      |v $ %{} :Expr (:at 1554225504456) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1554225505191) (:by |root) (:text |:value)
                                                          |j $ %{} :Leaf (:at 1554225505416) (:by |root) (:text |e)
                              |T $ %{} :Expr (:at 1539099101998) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |list->)
                                  |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |{})
                                      |b $ %{} :Expr (:at 1692169701218) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1692169703155) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Expr (:at 1692169704794) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1692169707981) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                              |b $ %{} :Leaf (:at 1692169709491) (:by |B1y7Rc-Zz) (:text |css/flex)
                                              |h $ %{} :Leaf (:at 1692169713753) (:by |B1y7Rc-Zz) (:text |css/row)
                                      |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1557042906577) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1557042909923) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1557042911422) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1557042912823) (:by |B1y7Rc-Zz) (:text |:flex-wrap)
                                                  |j $ %{} :Leaf (:at 1557042914147) (:by |B1y7Rc-Zz) (:text |:wrap)
                                  |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629785786529) (:by |B1y7Rc-Zz) (:text |->)
                                      |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:workflows)
                                          |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |router-data)
                                      |k $ %{} :Expr (:at 1629785788318) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629785791276) (:by |B1y7Rc-Zz) (:text |.to-list)
                                      |l $ %{} :Expr (:at 1554225390906) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629785799815) (:by |B1y7Rc-Zz) (:text |.filter-pair)
                                          |j $ %{} :Expr (:at 1554225392574) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1554225393175) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1554225393510) (:by |root)
                                                :data $ {}
                                                  |j $ %{} :Leaf (:at 1554225394867) (:by |root) (:text |k)
                                                  |r $ %{} :Leaf (:at 1554225396107) (:by |root) (:text |workflow)
                                              |r $ %{} :Expr (:at 1554225479210) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1554225481866) (:by |root) (:text |:matches?)
                                                  |T $ %{} :Expr (:at 1554225397588) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1554225464144) (:by |root) (:text |parse-by-letter)
                                                      |j $ %{} :Expr (:at 1554258946582) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1629786362607) (:by |B1y7Rc-Zz) (:text |.!toLowerCase)
                                                          |T $ %{} :Expr (:at 1554225466906) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1554225468043) (:by |root) (:text |:name)
                                                              |j $ %{} :Leaf (:at 1554225469461) (:by |root) (:text |workflow)
                                                      |r $ %{} :Expr (:at 1554258952335) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1629786361156) (:by |B1y7Rc-Zz) (:text |.!toLowerCase)
                                                          |T $ %{} :Expr (:at 1554225472888) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1554225474523) (:by |root) (:text |:query)
                                                              |j $ %{} :Leaf (:at 1554225475533) (:by |root) (:text |state)
                                      |n $ %{} :Expr (:at 1554225225839) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629785814787) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                          |j $ %{} :Expr (:at 1554225228188) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1554225228499) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1554225228909) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629785810947) (:by |B1y7Rc-Zz) (:text |pair)
                                              |r $ %{} :Expr (:at 1554225235713) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1554225237139) (:by |root) (:text |:name)
                                                  |j $ %{} :Expr (:at 1629785804446) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629785805591) (:by |B1y7Rc-Zz) (:text |last)
                                                      |j $ %{} :Leaf (:at 1629785807351) (:by |B1y7Rc-Zz) (:text |pair)
                                      |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629785819667) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                          |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |fn)
                                              |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629785821124) (:by |B1y7Rc-Zz) (:text |k)
                                                  |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |workflow)
                                              |r $ %{} :Expr (:at 1629785822047) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629785826029) (:by |B1y7Rc-Zz) (:text |[])
                                                  |L $ %{} :Leaf (:at 1629785826540) (:by |B1y7Rc-Zz) (:text |k)
                                                  |T $ %{} :Expr (:at 1553451028031) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553451006350) (:by |B1y7Rc-Zz) (:text |comp-command-button)
                                                      |j $ %{} :Leaf (:at 1553451029787) (:by |B1y7Rc-Zz) (:text |workflow)
                          |v $ %{} :Expr (:at 1553451128953) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1553451130586) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1553451130819) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451131190) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553451131719) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1692169723893) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |j $ %{} :Leaf (:at 1692169726222) (:by |B1y7Rc-Zz) (:text |css/row-middle)
                              |M $ %{} :Expr (:at 1629788705654) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788705654) (:by |B1y7Rc-Zz) (:text |button)
                                  |j $ %{} :Expr (:at 1629788705654) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788705654) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1684291688655) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1684291690527) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |T $ %{} :Expr (:at 1684291648090) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1684291648090) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                              |b $ %{} :Leaf (:at 1684291648090) (:by |B1y7Rc-Zz) (:text |css/button)
                                              |h $ %{} :Leaf (:at 1684291648090) (:by |B1y7Rc-Zz) (:text |style/css-button)
                                      |r $ %{} :Expr (:at 1629788705654) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788705654) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1629788705654) (:by |B1y7Rc-Zz) (:text "|\"Run")
                                      |v $ %{} :Expr (:at 1629788707004) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788709998) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1629788710252) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788710598) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629788710948) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788711137) (:by |B1y7Rc-Zz) (:text |e)
                                                  |j $ %{} :Leaf (:at 1629788711634) (:by |B1y7Rc-Zz) (:text |d!)
                                              |r $ %{} :Expr (:at 1629788715231) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788714990) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629788716323) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |r $ %{} :Expr (:at 1629788716544) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629788717403) (:by |B1y7Rc-Zz) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1629788721191) (:by |B1y7Rc-Zz) (:text |state)
                                                      |r $ %{} :Leaf (:at 1629788727180) (:by |B1y7Rc-Zz) (:text |:pop?)
                                                      |v $ %{} :Leaf (:at 1629788735091) (:by |B1y7Rc-Zz) (:text |true)
                              |OT $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |comp-modal)
                                  |j $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |:title)
                                          |j $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text ||Demo)
                                      |r $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |400)
                                      |v $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |:container-style)
                                          |j $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |{})
                                      |x $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |:render)
                                          |j $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629788700791) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788700791) (:by |B1y7Rc-Zz) (:text |on-close)
                                              |r $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |comp-command-editor)
                                                  |j $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |>>)
                                                      |j $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |states)
                                                      |r $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:quick-run)
                                                  |r $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |nil)
                                                  |v $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |j $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |draft)
                                                          |j $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |r $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |j $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:effect/run)
                                                          |r $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |{})
                                                              |j $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:command)
                                                                  |j $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:code)
                                                                      |j $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |draft)
                                                              |r $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:cwd)
                                                                  |j $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:path)
                                                                      |j $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |draft)
                                                              |v $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:title)
                                                                  |j $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |:title)
                                                                      |j $ %{} :Leaf (:at 1629788770915) (:by |B1y7Rc-Zz) (:text |draft)
                                                      |v $ %{} :Expr (:at 1629788770915) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629788775078) (:by |B1y7Rc-Zz) (:text |on-close)
                                                          |j $ %{} :Leaf (:at 1629788781496) (:by |B1y7Rc-Zz) (:text |d!)
                                  |r $ %{} :Expr (:at 1629790291001) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790292906) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1629790294059) (:by |B1y7Rc-Zz) (:text |state)
                                  |v $ %{} :Expr (:at 1629788754312) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629788754312) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629788754312) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629788754312) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |:pop?)
                                              |v $ %{} :Leaf (:at 1629788754312) (:by |B1y7Rc-Zz) (:text |false)
                              |P $ %{} :Expr (:at 1553451138594) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451139072) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1553451140695) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1553451141360) (:by |B1y7Rc-Zz) (:text |nil)
                              |R $ %{} :Expr (:at 1567393212207) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text |button)
                                  |j $ %{} :Expr (:at 1567393212207) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1684291564636) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1684291564636) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Expr (:at 1684291628780) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1684291632034) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                              |L $ %{} :Leaf (:at 1684291636786) (:by |B1y7Rc-Zz) (:text |css/button)
                                              |T $ %{} :Leaf (:at 1684291564636) (:by |B1y7Rc-Zz) (:text |style/css-button)
                                      |r $ %{} :Expr (:at 1567393212207) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text "|\"Kill all")
                                      |v $ %{} :Expr (:at 1567393212207) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1567393212207) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1567393212207) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text |e)
                                                  |j $ %{} :Leaf (:at 1567393212207) (:by |B1y7Rc-Zz) (:text |d!)
                                              |v $ %{} :Expr (:at 1567393287085) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629790311422) (:by |B1y7Rc-Zz) (:text |&doseq)
                                                  |T $ %{} :Expr (:at 1567393309854) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1567393293616) (:by |B1y7Rc-Zz) (:text |pid)
                                                      |j $ %{} :Expr (:at 1567393268412) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1567393286612) (:by |B1y7Rc-Zz) (:text |keys)
                                                          |T $ %{} :Expr (:at 1567393267737) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1567393267737) (:by |B1y7Rc-Zz) (:text |:processes)
                                                              |j $ %{} :Leaf (:at 1567393267737) (:by |B1y7Rc-Zz) (:text |router-data)
                                                  |j $ %{} :Expr (:at 1567393294233) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1567393295370) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1567393302864) (:by |B1y7Rc-Zz) (:text |:effect/kill)
                                                      |r $ %{} :Leaf (:at 1567393301173) (:by |B1y7Rc-Zz) (:text |pid)
                              |S $ %{} :Expr (:at 1567393214801) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1567393214801) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1567393214801) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1567393214801) (:by |B1y7Rc-Zz) (:text |nil)
                              |T $ %{} :Expr (:at 1539099101998) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553451107895) (:by |B1y7Rc-Zz) (:text |a)
                                  |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1692169734123) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |j $ %{} :Leaf (:at 1692169735698) (:by |B1y7Rc-Zz) (:text |css/link)
                                      |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1629790319424) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629790320617) (:by |B1y7Rc-Zz) (:text |fn)
                                              |L $ %{} :Expr (:at 1629790320999) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629790321262) (:by |B1y7Rc-Zz) (:text |e)
                                                  |j $ %{} :Leaf (:at 1629790321795) (:by |B1y7Rc-Zz) (:text |d!)
                                              |T $ %{} :Expr (:at 1539099101998) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629790318869) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:process/clear)
                                                  |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |nil)
                                  |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |<>)
                                      |j $ %{} :Leaf (:at 1553451119328) (:by |B1y7Rc-Zz) (:text "|\"Clear")
                      |v $ %{} :Expr (:at 1539099101998) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |8)
                      |x $ %{} :Expr (:at 1539099101998) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1539099101998) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692169586132) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1692169588630) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                      |b $ %{} :Leaf (:at 1692169589865) (:by |B1y7Rc-Zz) (:text |css/flex)
                                      |r $ %{} :Leaf (:at 1692169612122) (:by |B1y7Rc-Zz) (:text |css-process-list)
                          |r $ %{} :Expr (:at 1539099101998) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629788552978) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:processes)
                                  |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |router-data)
                              |n $ %{} :Expr (:at 1629788554358) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788556138) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788558324) (:by |B1y7Rc-Zz) (:text |.sort)
                                  |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |x)
                                          |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |y)
                                      |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |-)
                                          |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:started-at)
                                              |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788570879) (:by |B1y7Rc-Zz) (:text |last)
                                                  |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |y)
                                          |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:started-at)
                                              |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788572315) (:by |B1y7Rc-Zz) (:text |last)
                                                  |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |x)
                              |t $ %{} :Expr (:at 1692169507081) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692169509445) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                  |b $ %{} :Expr (:at 1692169510557) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1692169510770) (:by |B1y7Rc-Zz) (:text |fn)
                                      |b $ %{} :Expr (:at 1692169511188) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1692169512864) (:by |B1y7Rc-Zz) (:text |pair)
                                      |h $ %{} :Expr (:at 1692169539484) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1692169570096) (:by |B1y7Rc-Zz) (:text |not)
                                          |T $ %{} :Expr (:at 1692169565597) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1692169565597) (:by |B1y7Rc-Zz) (:text |:alive?)
                                              |b $ %{} :Expr (:at 1692169565597) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1692169565597) (:by |B1y7Rc-Zz) (:text |last)
                                                  |b $ %{} :Leaf (:at 1692169565597) (:by |B1y7Rc-Zz) (:text |pair)
                              |v $ %{} :Expr (:at 1539099101998) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788563305) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |pid)
                                          |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |process)
                                      |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |pid)
                                          |r $ %{} :Expr (:at 1539099101998) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |comp-process)
                                              |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |process)
        |css-filter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1554225326628) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1686547405395) (:by |B1y7Rc-Zz) (:text |defstyle)
              |j $ %{} :Leaf (:at 1686547400762) (:by |B1y7Rc-Zz) (:text |css-filter)
              |r $ %{} :Expr (:at 1686547406784) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686547408533) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686547408945) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686547410528) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1554225326628) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:min-width)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |60)
                          |r $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:width)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |60)
                          |v $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:background-color)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:transparent)
                          |x $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:color)
                              |j $ %{} :Expr (:at 1554225783652) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1554225784312) (:by |root) (:text |hsl)
                                  |j $ %{} :Leaf (:at 1554225784724) (:by |root) (:text |0)
                                  |r $ %{} :Leaf (:at 1554225785050) (:by |root) (:text |0)
                                  |v $ %{} :Leaf (:at 1554225785888) (:by |root) (:text |100)
                                  |x $ %{} :Leaf (:at 1554225788048) (:by |root) (:text |0.8)
                          |y $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:border-width)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text "|\"0 0 1px 0")
                          |yT $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:border-bottom)
                              |j $ %{} :Expr (:at 1554225326628) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |str)
                                  |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text "|\"1px solid ")
                                  |r $ %{} :Expr (:at 1554225326628) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |hsl)
                                      |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |0)
                                      |r $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |0)
                                      |v $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |100)
                                      |x $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |0.5)
                          |yj $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:border-radius)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |0)
                          |yr $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:outline)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:none)
                          |yv $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text "|\"28px")
                          |yx $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |14)
                          |yy $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |ui/font-normal)
                          |yyT $ %{} :Expr (:at 1554225326628) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1554225326628) (:by |root) (:text |:padding)
                              |j $ %{} :Leaf (:at 1554225326628) (:by |root) (:text "|\"0 8px")
        |css-home $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686547236941) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686547239811) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686547236941) (:by |B1y7Rc-Zz) (:text |css-home)
              |h $ %{} :Expr (:at 1686547241508) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686547241969) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686547242413) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686547243857) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686547240674) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686547240674) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686547240674) (:by |B1y7Rc-Zz) (:text |ui/flex)
                          |h $ %{} :Leaf (:at 1686547240674) (:by |B1y7Rc-Zz) (:text |ui/column)
                          |l $ %{} :Expr (:at 1686547240674) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547240674) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686547240674) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547240674) (:by |B1y7Rc-Zz) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1692169243952) (:by |B1y7Rc-Zz) (:text "|\"8px 0px")
                              |h $ %{} :Expr (:at 1686547240674) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547240674) (:by |B1y7Rc-Zz) (:text |:overflow)
                                  |b $ %{} :Leaf (:at 1686547240674) (:by |B1y7Rc-Zz) (:text |:auto)
        |css-process-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1692169655158) (:by |B1y7Rc-Zz) (:text |css-process-list)
              |h $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |b $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:overflow)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:auto)
                          |h $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:flex-wrap)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:wrap)
                          |l $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:padding-bottom)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |120)
                          |o $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:align-items)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:flex-start)
                          |q $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:gap)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text "|\"8px")
                          |s $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:grid-template-columns)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text "|\"repeat(auto-fit, minmax(560px, 1fr))")
                          |t $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:grid-auto-flow)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:dense)
                          |u $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:display)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:grid)
                          |v $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:padding)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text "|\"8px")
                          |w $ %{} :Expr (:at 1692169641630) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |:padding-bottom)
                              |b $ %{} :Leaf (:at 1692169641630) (:by |B1y7Rc-Zz) (:text |120)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099101998) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |app.comp.home)
            |r $ %{} :Expr (:at 1539099101998) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099101998) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629785012125) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099101998) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1539099101998) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1539099101998) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099101998) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1539099101998) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553327450085) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099101998) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1629788608159) (:by |B1y7Rc-Zz) (:text |>>)
                        |u $ %{} :Leaf (:at 1629790163050) (:by |B1y7Rc-Zz) (:text |list->)
                        |y $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |<>)
                        |yj $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |span)
                        |yr $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |div)
                        |yv $ %{} :Leaf (:at 1553451114539) (:by |B1y7Rc-Zz) (:text |a)
                        |yx $ %{} :Leaf (:at 1554224874256) (:by |root) (:text |input)
                |yj $ %{} :Expr (:at 1539099101998) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |app.comp.process)
                    |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099101998) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |comp-process)
                |yr $ %{} :Expr (:at 1539099101998) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099101998) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |join-path)
                        |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |map-val)
                |yv $ %{} :Expr (:at 1539099101998) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099101998) (:by |root) (:text |style)
                |yx $ %{} :Expr (:at 1553451045837) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553451045837) (:by |B1y7Rc-Zz) (:text |app.comp.command)
                    |r $ %{} :Leaf (:at 1553451045837) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553451045837) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1553451045837) (:by |B1y7Rc-Zz) (:text |comp-command-button)
                        |r $ %{} :Leaf (:at 1553451342550) (:by |B1y7Rc-Zz) (:text |comp-command-editor)
                |yyT $ %{} :Expr (:at 1554225443789) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1554225444825) (:by |root) (:text |fuzzy-filter.core)
                    |r $ %{} :Leaf (:at 1554225446059) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1554225451275) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1554225452002) (:by |root) (:text |parse-by-letter)
                |yyj $ %{} :Expr (:at 1629790146127) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629790149951) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |j $ %{} :Leaf (:at 1629790151897) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629790152101) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629790303258) (:by |B1y7Rc-Zz) (:text |comp-modal)
                |yyr $ %{} :Expr (:at 1629797329160) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629797333869) (:by |B1y7Rc-Zz) (:text |respo.comp.inspect)
                    |j $ %{} :Leaf (:at 1629797335740) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629797335943) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629797340128) (:by |B1y7Rc-Zz) (:text |comp-inspect)
                |z $ %{} :Expr (:at 1684291618987) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1684291625356) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1684291625980) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1684291626517) (:by |B1y7Rc-Zz) (:text |css)
                |zD $ %{} :Expr (:at 1686547250379) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686547257159) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1686547257926) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1686547258134) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1686547259735) (:by |B1y7Rc-Zz) (:text |defstyle)
    |app.comp.login $ %{} :FileEntry
      :defs $ {}
        |comp-login $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-login)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629796513042) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629796514070) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629796514316) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629796517470) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629796516300) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |states)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
                  |r $ %{} :Expr (:at 1519368111046) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1519368111912) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1519368112156) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368113787) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1519368114295) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1519368116587) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1519368119982) (:by |root)
                                :data $ {}
                                  |5 $ %{} :Leaf (:at 1519368124581) (:by |root) (:text |merge)
                                  |D $ %{} :Leaf (:at 1519368123630) (:by |root) (:text |ui/flex)
                                  |T $ %{} :Leaf (:at 1519368119197) (:by |root) (:text |ui/center)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Username)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302367311) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1629796450640) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629796452101) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |L $ %{} :Expr (:at 1629796452487) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629796453416) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1629796454065) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |T $ %{} :Expr (:at 1629796449991) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629796449991) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1629796449991) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1629796449991) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629796449991) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1629796449991) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1629796460924) (:by |B1y7Rc-Zz) (:text |:username)
                                                          |v $ %{} :Expr (:at 1629796449991) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629796449991) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1629796449991) (:by |B1y7Rc-Zz) (:text |e)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:placeholder)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Password)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:value)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/input)
                                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1514302370752) (:by |root) (:text |:on-input)
                                              |j $ %{} :Expr (:at 1629796463948) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1629796463948) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |e)
                                                      |j $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |r $ %{} :Expr (:at 1629796463948) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |cursor)
                                                      |r $ %{} :Expr (:at 1629796463948) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |state)
                                                          |r $ %{} :Leaf (:at 1629796467025) (:by |B1y7Rc-Zz) (:text |:password)
                                                          |v $ %{} :Expr (:at 1629796463948) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |j $ %{} :Leaf (:at 1629796463948) (:by |B1y7Rc-Zz) (:text |e)
                          |v $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                          |x $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1519368067092) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1519368067501) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1519368135916) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1519368141461) (:by |root) (:text |:text-align)
                                              |j $ %{} :Leaf (:at 1519368142240) (:by |root) (:text |:right)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367924372) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Sign up")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                              |j $ %{} :Leaf (:at 1519368006916) (:by |root) (:text |style/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302375364) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |true)
                              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |8)
                                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                              |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519367939048) (:by |root) (:text |span)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1519368084428) (:by |root) (:text "||Log in")
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |merge)
                                              |j $ %{} :Leaf (:at 1519368006916) (:by |root) (:text |style/link)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1514302381488) (:by |root) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
                                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |state)
                                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |false)
        |initial-state $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |initial-state)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:username)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||)
        |on-submit $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |on-submit)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
                  |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |fn)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |signup?)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/sign-up)
                          |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-in)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |j $ %{} :Leaf (:at 1696745670260) (:by |B1y7Rc-Zz) (:text |js/localStorage.setItem)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                          |j $ %{} :Leaf (:at 1527788909281) (:by |root) (:text |config/site)
                      |v $ %{} :Expr (:at 1629796760097) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1629796765304) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                          |T $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |username)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1510936619134) (:by |root) (:text |app.comp.login)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1553327460292) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |input)
                        |y $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |button)
                        |yT $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.inspect)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-inspect)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547410331) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368017028) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368019779) (:by |root) (:text |style)
                |yj $ %{} :Expr (:at 1527788911549) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788911897) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788913217) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788914516) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788915188) (:by |root) (:text |config)
    |app.comp.missing $ %{} :FileEntry
      :defs $ {}
        |comp-missing $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099122986) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |comp-missing)
              |r $ %{} :Expr (:at 1539099122986) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |router)
              |v $ %{} :Expr (:at 1539099122986) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1539099122986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1539099122986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text "||Page missing")
                  |v $ %{} :Expr (:at 1539099122986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099122986) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539099122986) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1539099122986) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099122986) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |ui/font-code)
                      |r $ %{} :Expr (:at 1539099122986) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |router)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099122986) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |app.comp.missing)
            |r $ %{} :Expr (:at 1539099122986) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099122986) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |hsl.core)
                    |r $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099122986) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1539099122986) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |ui)
                |v $ %{} :Expr (:at 1539099122986) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1553327465947) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099122986) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1539099122986) (:by |root) (:text |div)
    |app.comp.navigation $ %{} :FileEntry
      :defs $ {}
        |comp-navigation $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-navigation)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                  |b $ %{} :Leaf (:at 1539195689666) (:by |root) (:text |router)
                  |j $ %{} :Leaf (:at 1523120365880) (:by |root) (:text |count-members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548366967) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1686548375650) (:by |B1y7Rc-Zz) (:text |css-nav)
                  |r $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |v $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |div)
                      |x $ %{} :Expr (:at 1539195568122) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539195568122) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |ui/row)
                      |y $ %{} :Expr (:at 1539195568122) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |render-entry)
                          |j $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |router)
                          |r $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |:home)
                          |v $ %{} :Leaf (:at 1539195568122) (:by |root) (:text ||Termina)
                      |yT $ %{} :Expr (:at 1539195568122) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |16)
                          |r $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |nil)
                      |yj $ %{} :Expr (:at 1539195568122) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |render-entry)
                          |j $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |router)
                          |r $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |:workflows)
                          |v $ %{} :Leaf (:at 1539195568122) (:by |root) (:text ||Workflows)
                      |yr $ %{} :Expr (:at 1539195568122) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |16)
                          |r $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |nil)
                      |yv $ %{} :Expr (:at 1539195568122) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |render-entry)
                          |j $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |router)
                          |r $ %{} :Leaf (:at 1539195568122) (:by |root) (:text |:history)
                          |v $ %{} :Leaf (:at 1539195568122) (:by |root) (:text ||History)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:cursor)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||pointer)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1514302332444) (:by |root) (:text |:on-click)
                              |j $ %{} :Expr (:at 1629790131363) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1629790132313) (:by |B1y7Rc-Zz) (:text |fn)
                                  |L $ %{} :Expr (:at 1629790133114) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790134254) (:by |B1y7Rc-Zz) (:text |e)
                                      |j $ %{} :Leaf (:at 1629790134859) (:by |B1y7Rc-Zz) (:text |d!)
                                  |T $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790130820) (:by |B1y7Rc-Zz) (:text |d!)
                                      |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:router/change)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:profile)
                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |if)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |logged-in?)
                              |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Me)
                              |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text ||Guest)
                      |v $ %{} :Expr (:at 1523120369216) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120369974) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1523120371053) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1523120371555) (:by |root) (:text |nil)
                      |x $ %{} :Expr (:at 1523120371997) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1523120372630) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1523120373023) (:by |root) (:text |count-members)
        |css-nav $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548375982) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548377136) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548378281) (:by |B1y7Rc-Zz) (:text |css-nav)
              |h $ %{} :Expr (:at 1686548379490) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548380530) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548380920) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548382207) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |ui/row-center)
                          |h $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:height)
                                  |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |32)
                              |h $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:justify-content)
                                  |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:space-between)
                              |l $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text "||0 16px")
                              |o $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:font-size)
                                  |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |16)
                              |q $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:border-bottom)
                                  |b $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |str)
                                      |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text "||1px solid ")
                                      |h $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0)
                                          |h $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0)
                                          |l $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0)
                                          |o $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0.1)
                              |s $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:font-family)
                                  |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                              |t $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1686548379077) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0)
                                      |o $ %{} :Leaf (:at 1686548379077) (:by |B1y7Rc-Zz) (:text |0.04)
        |render-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539195587220) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |render-entry)
              |r $ %{} :Expr (:at 1539195587220) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |router)
                  |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |router-name)
                  |r $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |title)
              |v $ %{} :Expr (:at 1539195587220) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1539195587220) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1539195587220) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1539195587220) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |style-logo)
                              |r $ %{} :Expr (:at 1539195587220) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1539195587220) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |=)
                                      |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |router-name)
                                      |r $ %{} :Expr (:at 1539195587220) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |:name)
                                          |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |router)
                                  |r $ %{} :Expr (:at 1539195587220) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539195587220) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |:color)
                                          |j $ %{} :Leaf (:at 1553448972941) (:by |B1y7Rc-Zz) (:text |:white)
                      |r $ %{} :Expr (:at 1539195587220) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |:on-click)
                          |j $ %{} :Expr (:at 1629790117762) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1629790118290) (:by |B1y7Rc-Zz) (:text |fn)
                              |L $ %{} :Expr (:at 1629790119930) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790118561) (:by |B1y7Rc-Zz) (:text |e)
                                  |j $ %{} :Leaf (:at 1629790120870) (:by |B1y7Rc-Zz) (:text |d!)
                              |T $ %{} :Expr (:at 1539195587220) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790117308) (:by |B1y7Rc-Zz) (:text |d!)
                                  |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |:router/change)
                                  |r $ %{} :Expr (:at 1539195587220) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539195587220) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |:name)
                                          |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |router-name)
                  |r $ %{} :Expr (:at 1539195587220) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |<>)
                      |j $ %{} :Leaf (:at 1539195587220) (:by |root) (:text |title)
        |style-logo $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539195667252) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |style-logo)
              |r $ %{} :Expr (:at 1539195667252) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1539195667252) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |:pointer)
                  |r $ %{} :Expr (:at 1539195667252) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1539195667252) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |0)
                          |r $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |0)
                          |v $ %{} :Leaf (:at 1539195667252) (:by |root) (:text |60)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.navigation)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629784938743) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1516547394445) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |w $ %{} :Expr (:at 1523120376505) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1523120379036) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1523120382218) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1523120382545) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1523120383255) (:by |root) (:text |=<)
                |x $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553327470870) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |t $ %{} :Leaf (:at 1629784941256) (:by |B1y7Rc-Zz) (:text |>>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                |y $ %{} :Expr (:at 1536561755369) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1536561755369) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1536561758845) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1536561761903) (:by |B1y7Rc-Zz) (:text |config)
                |z $ %{} :Expr (:at 1686548384679) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686548386017) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1686548387980) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1686548388216) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1686548389302) (:by |B1y7Rc-Zz) (:text |defstyle)
    |app.comp.process $ %{} :FileEntry
      :defs $ {}
        |comp-process $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099135480) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |comp-process)
              |r $ %{} :Expr (:at 1539099135480) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |process)
              |v $ %{} :Expr (:at 1539099135480) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1539099135480) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1539099135480) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686547466029) (:by |B1y7Rc-Zz) (:text |:class-name)
                          |b $ %{} :Leaf (:at 1686547469180) (:by |B1y7Rc-Zz) (:text |css-process)
                  |r $ %{} :Expr (:at 1539099135480) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099135480) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539099135480) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547499325) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1686547505747) (:by |B1y7Rc-Zz) (:text |css-title-bar)
                          |n $ %{} :Expr (:at 1686547529532) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547530819) (:by |B1y7Rc-Zz) (:text |:style)
                              |b $ %{} :Expr (:at 1686547531199) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |if)
                                  |b $ %{} :Expr (:at 1686547531199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |:alive?)
                                      |b $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |process)
                                  |h $ %{} :Expr (:at 1686547531199) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1686547531199) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |:background-color)
                                          |b $ %{} :Expr (:at 1686547531199) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |b $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |50)
                                              |h $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |100)
                                              |l $ %{} :Leaf (:at 1686547531199) (:by |B1y7Rc-Zz) (:text |60)
                      |n $ %{} :Expr (:at 1553452406343) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1553452409429) (:by |B1y7Rc-Zz) (:text |div)
                          |L $ %{} :Expr (:at 1553452409738) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553452410049) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553452410317) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700717158650) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1700717160721) (:by |B1y7Rc-Zz) (:text |css/row-middle)
                          |T $ %{} :Expr (:at 1553451726166) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553451727339) (:by |B1y7Rc-Zz) (:text |<>)
                              |j $ %{} :Expr (:at 1553495350268) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1553495353624) (:by |B1y7Rc-Zz) (:text |or)
                                  |T $ %{} :Expr (:at 1553451727644) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553451730329) (:by |B1y7Rc-Zz) (:text |:title)
                                      |j $ %{} :Leaf (:at 1553451731951) (:by |B1y7Rc-Zz) (:text |process)
                                  |j $ %{} :Leaf (:at 1553495356861) (:by |B1y7Rc-Zz) (:text "|\"Task")
                              |r $ %{} :Expr (:at 1553536076006) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1553536078067) (:by |B1y7Rc-Zz) (:text |merge)
                                  |T $ %{} :Leaf (:at 1553451738413) (:by |B1y7Rc-Zz) (:text |style/text)
                                  |j $ %{} :Expr (:at 1553536078552) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553536078911) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1553536079172) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553536080785) (:by |B1y7Rc-Zz) (:text |:color)
                                          |j $ %{} :Leaf (:at 1553536082666) (:by |B1y7Rc-Zz) (:text |:black)
                      |v $ %{} :Expr (:at 1553452433878) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1553452435356) (:by |B1y7Rc-Zz) (:text |div)
                          |L $ %{} :Expr (:at 1553452435620) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553452435959) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553452437353) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548473917) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1686548477746) (:by |B1y7Rc-Zz) (:text |css/row-middle)
                          |T $ %{} :Expr (:at 1539099135480) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1681368217291) (:by |B1y7Rc-Zz) (:text |button)
                              |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |{})
                                  |X $ %{} :Expr (:at 1700717165254) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1700717166869) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1700717168897) (:by |B1y7Rc-Zz) (:text |css/button)
                                  |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1629790335547) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629790336905) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1629790337195) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629790337799) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1629790339099) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1539099135480) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629790328338) (:by |B1y7Rc-Zz) (:text |d!)
                                              |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:router/change)
                                              |r $ %{} :Expr (:at 1539099135480) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:name)
                                                      |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:process)
                                                  |r $ %{} :Expr (:at 1539099135480) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:params)
                                                      |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:id)
                                                              |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:pid)
                                                                  |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |process)
                                  |n $ %{} :Expr (:at 1681368226565) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1681368229043) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                      |b $ %{} :Leaf (:at 1681368232402) (:by |B1y7Rc-Zz) (:text "|\"View")
                          |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:alive?)
                                  |j $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |process)
                              |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1681376403945) (:by |B1y7Rc-Zz) (:text |a)
                                  |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686548503767) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1686548508327) (:by |B1y7Rc-Zz) (:text |css-link-kill)
                                      |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1629790332138) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629790332723) (:by |B1y7Rc-Zz) (:text |fn)
                                              |L $ %{} :Expr (:at 1629790333045) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629790333488) (:by |B1y7Rc-Zz) (:text |e)
                                                  |j $ %{} :Leaf (:at 1629790334124) (:by |B1y7Rc-Zz) (:text |d!)
                                              |T $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629790329897) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:effect/kill)
                                                  |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:pid)
                                                      |j $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |process)
                                  |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |<>)
                                      |j $ %{} :Leaf (:at 1553536137243) (:by |B1y7Rc-Zz) (:text "|\"Kill")
                              |v $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553452450897) (:by |B1y7Rc-Zz) (:text |a)
                                  |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Leaf (:at 1553452453762) (:by |B1y7Rc-Zz) (:text |style/link)
                                      |n $ %{} :Expr (:at 1553452455995) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553452457796) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |j $ %{} :Leaf (:at 1553452460363) (:by |B1y7Rc-Zz) (:text "|\"Redo")
                                      |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:on-click)
                                          |j $ %{} :Expr (:at 1567393603700) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1567393604180) (:by |B1y7Rc-Zz) (:text |fn)
                                              |L $ %{} :Expr (:at 1567393604466) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567393604717) (:by |B1y7Rc-Zz) (:text |e)
                                                  |j $ %{} :Leaf (:at 1567393605293) (:by |B1y7Rc-Zz) (:text |d!)
                                              |T $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567393610040) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:effect/run)
                                                  |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:cwd)
                                                          |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:cwd)
                                                              |j $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |process)
                                                      |r $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:command)
                                                          |j $ %{} :Expr (:at 1553452448964) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |:command)
                                                              |j $ %{} :Leaf (:at 1553452448964) (:by |B1y7Rc-Zz) (:text |process)
                                                      |v $ %{} :Expr (:at 1554224369106) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1554224373209) (:by |root) (:text |:title)
                                                          |j $ %{} :Expr (:at 1554224380556) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1554224381699) (:by |root) (:text |:title)
                                                              |j $ %{} :Leaf (:at 1554224384018) (:by |root) (:text |process)
                                              |j $ %{} :Expr (:at 1567393611727) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1567393612198) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1567393648486) (:by |B1y7Rc-Zz) (:text |:process/remove-dead)
                                                  |r $ %{} :Expr (:at 1567393620902) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1567393622525) (:by |B1y7Rc-Zz) (:text |:pid)
                                                      |j $ %{} :Leaf (:at 1567393624140) (:by |B1y7Rc-Zz) (:text |process)
                  |t $ %{} :Expr (:at 1553537492055) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553537492486) (:by |B1y7Rc-Zz) (:text |div)
                      |j $ %{} :Expr (:at 1553537492723) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553537493082) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1553537493313) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548530582) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1686548533209) (:by |B1y7Rc-Zz) (:text |css-process-log)
                      |n $ %{} :Expr (:at 1553537584253) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553537584253) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Expr (:at 1553537584253) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553537584253) (:by |B1y7Rc-Zz) (:text |:command)
                              |j $ %{} :Leaf (:at 1553537584253) (:by |B1y7Rc-Zz) (:text |process)
                          |r $ %{} :Expr (:at 1553537584253) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553537584253) (:by |B1y7Rc-Zz) (:text |merge)
                              |j $ %{} :Leaf (:at 1553537584253) (:by |B1y7Rc-Zz) (:text |style/text)
                      |p $ %{} :Expr (:at 1553537586457) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553537586457) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1553537586457) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Leaf (:at 1553537586457) (:by |B1y7Rc-Zz) (:text |nil)
                      |r $ %{} :Expr (:at 1553537507839) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |<>)
                          |j $ %{} :Expr (:at 1553537507839) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |:cwd)
                              |j $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |process)
                          |r $ %{} :Expr (:at 1553537507839) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |merge)
                              |j $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |style/text)
                              |r $ %{} :Expr (:at 1553537507839) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |{})
                                  |r $ %{} :Expr (:at 1553537507839) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |:color)
                                      |j $ %{} :Expr (:at 1553537507839) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |0)
                                          |r $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |0)
                                          |v $ %{} :Leaf (:at 1553537507839) (:by |B1y7Rc-Zz) (:text |60)
                  |v $ %{} :Expr (:at 1553536281444) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1553536297817) (:by |B1y7Rc-Zz) (:text |if-not)
                      |L $ %{} :Expr (:at 1553536282750) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553536284091) (:by |B1y7Rc-Zz) (:text |empty?)
                          |j $ %{} :Expr (:at 1553536290628) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553536291299) (:by |B1y7Rc-Zz) (:text |:content)
                              |j $ %{} :Leaf (:at 1553536294201) (:by |B1y7Rc-Zz) (:text |process)
                      |T $ %{} :Expr (:at 1539099135480) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1539099135480) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548563845) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |j $ %{} :Leaf (:at 1686548559809) (:by |B1y7Rc-Zz) (:text |css-content-list)
                          |r $ %{} :Expr (:at 1539099135480) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629797976084) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:content)
                                  |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |process)
                              |n $ %{} :Expr (:at 1629798016149) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629798017476) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1539099135480) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |take-last)
                                  |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |4)
                              |v $ %{} :Expr (:at 1539099135480) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629798044581) (:by |B1y7Rc-Zz) (:text |.map-indexed)
                                  |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1539099135480) (:by |root)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629798048367) (:by |B1y7Rc-Zz) (:text |idx)
                                          |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |chunk)
                                      |r $ %{} :Expr (:at 1629798049342) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629798049930) (:by |B1y7Rc-Zz) (:text |[])
                                          |L $ %{} :Leaf (:at 1629798050745) (:by |B1y7Rc-Zz) (:text |idx)
                                          |T $ %{} :Expr (:at 1553538469071) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1553538469763) (:by |B1y7Rc-Zz) (:text |let)
                                              |L $ %{} :Expr (:at 1553538469990) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |j $ %{} :Expr (:at 1553538510084) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553538513158) (:by |B1y7Rc-Zz) (:text |urls)
                                                      |j $ %{} :Expr (:at 1629790788389) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1629790793677) (:by |B1y7Rc-Zz) (:text |to-calcit-data)
                                                          |T $ %{} :Expr (:at 1553538516755) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1629798138102) (:by |B1y7Rc-Zz) (:text |.!match)
                                                              |T $ %{} :Expr (:at 1629790777257) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629790777257) (:by |B1y7Rc-Zz) (:text |:data)
                                                                  |j $ %{} :Leaf (:at 1629790777257) (:by |B1y7Rc-Zz) (:text |chunk)
                                                              |f $ %{} :Leaf (:at 1629790719479) (:by |B1y7Rc-Zz) (:text |url-pattern)
                                              |T $ %{} :Expr (:at 1553621578875) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1553621579759) (:by |B1y7Rc-Zz) (:text |div)
                                                  |L $ %{} :Expr (:at 1553621579990) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553621581053) (:by |B1y7Rc-Zz) (:text |{})
                                                      |j $ %{} :Expr (:at 1553621586659) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553621587613) (:by |B1y7Rc-Zz) (:text |:style)
                                                          |j $ %{} :Expr (:at 1553621589119) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553621588283) (:by |B1y7Rc-Zz) (:text |{})
                                                              |p $ %{} :Expr (:at 1553621743815) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1553621746189) (:by |B1y7Rc-Zz) (:text |:margin-top)
                                                                  |j $ %{} :Leaf (:at 1553621781036) (:by |B1y7Rc-Zz) (:text |2)
                                                              |v $ %{} :Expr (:at 1553621599412) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1553621599412) (:by |B1y7Rc-Zz) (:text |:display)
                                                                  |j $ %{} :Leaf (:at 1553621599412) (:by |B1y7Rc-Zz) (:text |:block)
                                                              |x $ %{} :Expr (:at 1553621770949) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1553621770949) (:by |B1y7Rc-Zz) (:text |:background-color)
                                                                  |j $ %{} :Expr (:at 1553621770949) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1553621770949) (:by |B1y7Rc-Zz) (:text |hsl)
                                                                      |j $ %{} :Leaf (:at 1553621770949) (:by |B1y7Rc-Zz) (:text |0)
                                                                      |r $ %{} :Leaf (:at 1553621770949) (:by |B1y7Rc-Zz) (:text |0)
                                                                      |v $ %{} :Leaf (:at 1553621770949) (:by |B1y7Rc-Zz) (:text |0)
                                                                      |x $ %{} :Leaf (:at 1553621770949) (:by |B1y7Rc-Zz) (:text |0.5)
                                                  |T $ %{} :Expr (:at 1553538543409) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1553621625891) (:by |B1y7Rc-Zz) (:text |if-not)
                                                      |L $ %{} :Expr (:at 1553538550283) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553538548210) (:by |B1y7Rc-Zz) (:text |empty?)
                                                          |j $ %{} :Leaf (:at 1553538552658) (:by |B1y7Rc-Zz) (:text |urls)
                                                      |T $ %{} :Expr (:at 1553538443203) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553538592961) (:by |B1y7Rc-Zz) (:text |list->)
                                                          |j $ %{} :Expr (:at 1553538447486) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553538447848) (:by |B1y7Rc-Zz) (:text |{})
                                                          |r $ %{} :Expr (:at 1553538611183) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1629798055224) (:by |B1y7Rc-Zz) (:text |->)
                                                              |L $ %{} :Leaf (:at 1553538617653) (:by |B1y7Rc-Zz) (:text |urls)
                                                              |T $ %{} :Expr (:at 1553538618229) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1553538618911) (:by |B1y7Rc-Zz) (:text |map)
                                                                  |T $ %{} :Expr (:at 1553538621637) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1553538622165) (:by |B1y7Rc-Zz) (:text |fn)
                                                                      |L $ %{} :Expr (:at 1553538622410) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1553538622848) (:by |B1y7Rc-Zz) (:text |url)
                                                                      |T $ %{} :Expr (:at 1553538626815) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |D $ %{} :Leaf (:at 1553538627402) (:by |B1y7Rc-Zz) (:text |[])
                                                                          |L $ %{} :Leaf (:at 1553538628437) (:by |B1y7Rc-Zz) (:text |url)
                                                                          |T $ %{} :Expr (:at 1553538448279) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |D $ %{} :Leaf (:at 1553538598821) (:by |B1y7Rc-Zz) (:text |a)
                                                                              |T $ %{} :Expr (:at 1553538600320) (:by |B1y7Rc-Zz)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1553538604541) (:by |B1y7Rc-Zz) (:text |{})
                                                                                  |j $ %{} :Expr (:at 1553538605162) (:by |B1y7Rc-Zz)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1553538606932) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                                                                      |j $ %{} :Leaf (:at 1553538631001) (:by |B1y7Rc-Zz) (:text |url)
                                                                                  |r $ %{} :Expr (:at 1553538631703) (:by |B1y7Rc-Zz)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1553538633590) (:by |B1y7Rc-Zz) (:text |:target)
                                                                                      |j $ %{} :Leaf (:at 1553538636586) (:by |B1y7Rc-Zz) (:text "|\"_blank")
                                                                                  |v $ %{} :Expr (:at 1553538637678) (:by |B1y7Rc-Zz)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1553538639283) (:by |B1y7Rc-Zz) (:text |:href)
                                                                                      |j $ %{} :Leaf (:at 1553538640361) (:by |B1y7Rc-Zz) (:text |url)
                                                                                  |x $ %{} :Expr (:at 1553538648775) (:by |B1y7Rc-Zz)
                                                                                    :data $ {}
                                                                                      |T $ %{} :Leaf (:at 1553538650738) (:by |B1y7Rc-Zz) (:text |:style)
                                                                                      |j $ %{} :Expr (:at 1553538650988) (:by |B1y7Rc-Zz)
                                                                                        :data $ {}
                                                                                          |T $ %{} :Leaf (:at 1553538651285) (:by |B1y7Rc-Zz) (:text |{})
                                                                                          |j $ %{} :Expr (:at 1553538651514) (:by |B1y7Rc-Zz)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1553538654238) (:by |B1y7Rc-Zz) (:text |:color)
                                                                                              |j $ %{} :Expr (:at 1553538654719) (:by |B1y7Rc-Zz)
                                                                                                :data $ {}
                                                                                                  |T $ %{} :Leaf (:at 1553538655029) (:by |B1y7Rc-Zz) (:text |hsl)
                                                                                                  |j $ %{} :Leaf (:at 1553538656155) (:by |B1y7Rc-Zz) (:text |200)
                                                                                                  |r $ %{} :Leaf (:at 1553538665742) (:by |B1y7Rc-Zz) (:text |80)
                                                                                                  |v $ %{} :Leaf (:at 1553538662361) (:by |B1y7Rc-Zz) (:text |70)
                                                                                          |r $ %{} :Expr (:at 1553538700344) (:by |B1y7Rc-Zz)
                                                                                            :data $ {}
                                                                                              |T $ %{} :Leaf (:at 1553538701293) (:by |B1y7Rc-Zz) (:text |:margin)
                                                                                              |j $ %{} :Leaf (:at 1553538704199) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                                                  |j $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |<>)
                                                      |j $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |:data)
                                                          |j $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |chunk)
                                                      |r $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |{})
                                                          |j $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |:color)
                                                              |j $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629788831837) (:by |B1y7Rc-Zz) (:text |case-default)
                                                                  |j $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |:type)
                                                                      |j $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |chunk)
                                                                  |n $ %{} :Expr (:at 1629788832481) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629788832481) (:by |B1y7Rc-Zz) (:text |hsl)
                                                                      |j $ %{} :Leaf (:at 1629788832481) (:by |B1y7Rc-Zz) (:text |60)
                                                                      |r $ %{} :Leaf (:at 1629788832481) (:by |B1y7Rc-Zz) (:text |0)
                                                                      |v $ %{} :Leaf (:at 1700717427657) (:by |B1y7Rc-Zz) (:text |72)
                                                                  |r $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |:stderr)
                                                                      |j $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |hsl)
                                                                          |j $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |60)
                                                                          |r $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |80)
                                                                          |v $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |36)
                                                                  |v $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |:error)
                                                                      |j $ %{} :Expr (:at 1553621667092) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |hsl)
                                                                          |j $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |0)
                                                                          |r $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |80)
                                                                          |v $ %{} :Leaf (:at 1553621667092) (:by |B1y7Rc-Zz) (:text |50)
                                                          |r $ %{} :Expr (:at 1553621676203) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553621677600) (:by |B1y7Rc-Zz) (:text |:padding)
                                                              |j $ %{} :Leaf (:at 1553621679916) (:by |B1y7Rc-Zz) (:text |8)
                                                          |v $ %{} :Expr (:at 1553621693354) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553621694744) (:by |B1y7Rc-Zz) (:text |:display)
                                                              |j $ %{} :Leaf (:at 1553621697122) (:by |B1y7Rc-Zz) (:text |:block)
                                                          |x $ %{} :Expr (:at 1557716626877) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1557716674436) (:by |B1y7Rc-Zz) (:text |:white-space)
                                                              |j $ %{} :Leaf (:at 1557716677598) (:by |B1y7Rc-Zz) (:text |:pre-line)
        |css-content-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548571926) (:by |B1y7Rc-Zz) (:text |defstyle)
              |j $ %{} :Leaf (:at 1686548551580) (:by |B1y7Rc-Zz) (:text |css-content-list)
              |r $ %{} :Expr (:at 1686548553179) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548553643) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548554127) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548555516) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |{})
                          |j $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:font-family)
                              |j $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                          |r $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:white-space)
                              |j $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:pre)
                          |v $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:font-size)
                              |j $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |12)
                          |x $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:line-height)
                              |j $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text "|\"1.5em")
                          |y $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:max-height)
                              |j $ %{} :Leaf (:at 1557043155170) (:by |B1y7Rc-Zz) (:text |240)
                          |yj $ %{} :Expr (:at 1553536330157) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:overflow)
                              |j $ %{} :Leaf (:at 1553536330157) (:by |B1y7Rc-Zz) (:text |:auto)
                          |z $ %{} :Expr (:at 1684293169264) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1684293169264) (:by |B1y7Rc-Zz) (:text |:border-radius)
                              |b $ %{} :Leaf (:at 1684293169264) (:by |B1y7Rc-Zz) (:text "|\"4px")
        |css-link-kill $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548508889) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548510119) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548508889) (:by |B1y7Rc-Zz) (:text |css-link-kill)
              |h $ %{} :Expr (:at 1686548510993) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548511413) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548512276) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548513930) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548510731) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548510731) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548510731) (:by |B1y7Rc-Zz) (:text |style/link)
                          |h $ %{} :Expr (:at 1686548510731) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548510731) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548510731) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548510731) (:by |B1y7Rc-Zz) (:text |:color)
                                  |b $ %{} :Leaf (:at 1686548510731) (:by |B1y7Rc-Zz) (:text |:red)
                              |h $ %{} :Expr (:at 1686548510731) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548510731) (:by |B1y7Rc-Zz) (:text |:border-color)
                                  |b $ %{} :Leaf (:at 1686548510731) (:by |B1y7Rc-Zz) (:text |:red)
        |css-process $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686547469491) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686547470733) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686547469491) (:by |B1y7Rc-Zz) (:text |css-process)
              |h $ %{} :Expr (:at 1686547469491) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1686547471795) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1686547472734) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1686547474368) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |b $ %{} :Expr (:at 1686547474771) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Expr (:at 1686547474771) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |{})
                              |h $ %{} :Expr (:at 1686547474771) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |:font-family)
                                  |b $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                              |l $ %{} :Expr (:at 1686547474771) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |:border-radius)
                                  |b $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text "|\"4px")
                              |o $ %{} :Expr (:at 1686547474771) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |:display)
                                  |b $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |:inline-block)
                              |q $ %{} :Expr (:at 1686547474771) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |:vertical-align)
                                  |b $ %{} :Leaf (:at 1686547474771) (:by |B1y7Rc-Zz) (:text |:top)
        |css-process-log $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548533529) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548534705) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548533529) (:by |B1y7Rc-Zz) (:text |css-process-log)
              |h $ %{} :Expr (:at 1686548535678) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548536099) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548536691) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548537959) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548535351) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                          |h $ %{} :Expr (:at 1686548535351) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548535351) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1686548535351) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |0)
                                      |o $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |0.5)
                              |h $ %{} :Expr (:at 1686548535351) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |:font-size)
                                  |b $ %{} :Leaf (:at 1686548535351) (:by |B1y7Rc-Zz) (:text |10)
        |css-title-bar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686547506387) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686547507639) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686547506387) (:by |B1y7Rc-Zz) (:text |css-title-bar)
              |h $ %{} :Expr (:at 1686547508856) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686547509495) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686547509923) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686547511695) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686547508482) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                          |h $ %{} :Expr (:at 1686547508482) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686547508482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |b $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text "|\"rgb(213,214,209)")
                              |h $ %{} :Expr (:at 1686547508482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |:color)
                                  |b $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |:black)
                              |l $ %{} :Expr (:at 1686547508482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text "|\"4px 4px")
                              |o $ %{} :Expr (:at 1686547508482) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text |:border-radius)
                                  |b $ %{} :Leaf (:at 1686547508482) (:by |B1y7Rc-Zz) (:text "|\"4px")
        |url-pattern $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629790721779) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629790721779) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1629790721779) (:by |B1y7Rc-Zz) (:text |url-pattern)
              |r $ %{} :Expr (:at 1629790725682) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629790728307) (:by |B1y7Rc-Zz) (:text |new)
                  |L $ %{} :Leaf (:at 1629790733613) (:by |B1y7Rc-Zz) (:text |js/RegExp)
                  |T $ %{} :Leaf (:at 1629790724366) (:by |B1y7Rc-Zz) (:text "|\"https?://\\S+")
                  |j $ %{} :Leaf (:at 1629790744629) (:by |B1y7Rc-Zz) (:text "|\"g")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099135480) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |app.comp.process)
            |r $ %{} :Expr (:at 1539099135480) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099135480) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629788812494) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099135480) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1539099135480) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1539099135480) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099135480) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |=<)
                |y $ %{} :Expr (:at 1539099135480) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553327475715) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099135480) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |list->)
                        |v $ %{} :Leaf (:at 1629788817149) (:by |B1y7Rc-Zz) (:text |>>)
                        |x $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |<>)
                        |y $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |span)
                        |yT $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |div)
                        |yj $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |button)
                        |yr $ %{} :Leaf (:at 1553452466766) (:by |B1y7Rc-Zz) (:text |a)
                |yT $ %{} :Expr (:at 1539099135480) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |style)
                |yj $ %{} :Expr (:at 1539099135480) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099135480) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099135480) (:by |root) (:text |map-with-index)
                |yr $ %{} :Expr (:at 1629790507486) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1629790512006) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |j $ %{} :Leaf (:at 1629790513125) (:by |B1y7Rc-Zz) (:text |:refer)
                    |r $ %{} :Expr (:at 1629790513353) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1629790516461) (:by |B1y7Rc-Zz) (:text |comp-alerts)
                |z $ %{} :Expr (:at 1686547477357) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686547480250) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1686547481370) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1686547481628) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1686547483311) (:by |B1y7Rc-Zz) (:text |defstyle)
                |zD $ %{} :Expr (:at 1686548481189) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686548484077) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1686548484896) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1686548485492) (:by |B1y7Rc-Zz) (:text |css)
    |app.comp.process-detail $ %{} :FileEntry
      :defs $ {}
        |comp-process-detail $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099152080) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |comp-process-detail)
              |r $ %{} :Expr (:at 1539099152080) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686547868686) (:by |B1y7Rc-Zz) (:text |states)
                  |T $ %{} :Leaf (:at 1704129596071) (:by |B1y7Rc-Zz) (:text |router-data)
              |v $ %{} :Expr (:at 1686547871957) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686547872512) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1686547872772) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1686547873564) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686547874306) (:by |B1y7Rc-Zz) (:text |cursor)
                          |b $ %{} :Expr (:at 1686547874542) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547883360) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1686547884053) (:by |B1y7Rc-Zz) (:text |states)
                      |b $ %{} :Expr (:at 1686547885168) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686547885846) (:by |B1y7Rc-Zz) (:text |state)
                          |b $ %{} :Expr (:at 1686547891507) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1686547892356) (:by |B1y7Rc-Zz) (:text |either)
                              |T $ %{} :Expr (:at 1686547886097) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547888808) (:by |B1y7Rc-Zz) (:text |:data)
                                  |b $ %{} :Leaf (:at 1686547887615) (:by |B1y7Rc-Zz) (:text |states)
                              |b $ %{} :Expr (:at 1686547892913) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547893155) (:by |B1y7Rc-Zz) (:text |{})
                                  |b $ %{} :Expr (:at 1686547893413) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686547896534) (:by |B1y7Rc-Zz) (:text |:filter)
                                      |b $ %{} :Leaf (:at 1686547897359) (:by |B1y7Rc-Zz) (:text "|\"")
                                  |e $ %{} :Expr (:at 1687674834976) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1687674837252) (:by |B1y7Rc-Zz) (:text |:filter?)
                                      |b $ %{} :Leaf (:at 1687674840831) (:by |B1y7Rc-Zz) (:text |true)
                                  |h $ %{} :Expr (:at 1686805946063) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686805956186) (:by |B1y7Rc-Zz) (:text |:wrap?)
                                      |b $ %{} :Leaf (:at 1686805959704) (:by |B1y7Rc-Zz) (:text |true)
                                  |l $ %{} :Expr (:at 1695730830600) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730834410) (:by |B1y7Rc-Zz) (:text |:all-log?)
                                      |b $ %{} :Leaf (:at 1695730835744) (:by |B1y7Rc-Zz) (:text |false)
                                  |o $ %{} :Expr (:at 1697002661635) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1697002751941) (:by |B1y7Rc-Zz) (:text |:hide-thread-info?)
                                      |b $ %{} :Leaf (:at 1697002670341) (:by |B1y7Rc-Zz) (:text |false)
                      |h $ %{} :Expr (:at 1704129597293) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1704129600170) (:by |B1y7Rc-Zz) (:text |process)
                          |b $ %{} :Expr (:at 1704129600530) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1704129602429) (:by |B1y7Rc-Zz) (:text |get)
                              |b $ %{} :Leaf (:at 1704129605136) (:by |B1y7Rc-Zz) (:text |router-data)
                              |h $ %{} :Leaf (:at 1704129607728) (:by |B1y7Rc-Zz) (:text |:detail)
                  |T $ %{} :Expr (:at 1539099152080) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099152080) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539099152080) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548186627) (:by |B1y7Rc-Zz) (:text |:class-name)
                              |b $ %{} :Leaf (:at 1686548189595) (:by |B1y7Rc-Zz) (:text |css-process)
                      |r $ %{} :Expr (:at 1686547797686) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1686547799047) (:by |B1y7Rc-Zz) (:text |div)
                          |L $ %{} :Expr (:at 1686547799307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686547799590) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686547800453) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1692169773208) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Leaf (:at 1692169774564) (:by |B1y7Rc-Zz) (:text |css/row-parted)
                          |b $ %{} :Expr (:at 1686723373961) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1686723374564) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1686723374873) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686723375303) (:by |B1y7Rc-Zz) (:text |{})
                                  |b $ %{} :Expr (:at 1686723388485) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686723389655) (:by |B1y7Rc-Zz) (:text |:style)
                                      |b $ %{} :Expr (:at 1686723397746) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1686723398468) (:by |B1y7Rc-Zz) (:text |merge)
                                          |L $ %{} :Leaf (:at 1686723401743) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                                          |T $ %{} :Expr (:at 1686723389986) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686723390248) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1686723390543) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686723405945) (:by |B1y7Rc-Zz) (:text |:gap)
                                                  |b $ %{} :Leaf (:at 1687675108084) (:by |B1y7Rc-Zz) (:text |4)
                              |V $ %{} :Expr (:at 1686547810943) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547811760) (:by |B1y7Rc-Zz) (:text |input)
                                  |b $ %{} :Expr (:at 1686547811980) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686547812346) (:by |B1y7Rc-Zz) (:text |{})
                                      |X $ %{} :Expr (:at 1686805904297) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686805905179) (:by |B1y7Rc-Zz) (:text |:type)
                                          |b $ %{} :Leaf (:at 1686805932287) (:by |B1y7Rc-Zz) (:text "|\"checkbox")
                                      |c $ %{} :Expr (:at 1686805988848) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686805990900) (:by |B1y7Rc-Zz) (:text |:style)
                                          |b $ %{} :Expr (:at 1686805991182) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686805991428) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1686805991781) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686805993933) (:by |B1y7Rc-Zz) (:text |:cursor)
                                                  |b $ %{} :Leaf (:at 1686805995522) (:by |B1y7Rc-Zz) (:text |:pointer)
                                              |h $ %{} :Expr (:at 1686806244506) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686806245798) (:by |B1y7Rc-Zz) (:text |:opacity)
                                                  |b $ %{} :Leaf (:at 1686806246709) (:by |B1y7Rc-Zz) (:text |0.8)
                                      |h $ %{} :Expr (:at 1686547905020) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686805937560) (:by |B1y7Rc-Zz) (:text |:checked)
                                          |b $ %{} :Expr (:at 1686547908242) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1687674850094) (:by |B1y7Rc-Zz) (:text |:filter?)
                                              |b $ %{} :Leaf (:at 1686547915060) (:by |B1y7Rc-Zz) (:text |state)
                                      |l $ %{} :Expr (:at 1686547916810) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686547921198) (:by |B1y7Rc-Zz) (:text |:on-input)
                                          |b $ %{} :Expr (:at 1686547921463) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686547921704) (:by |B1y7Rc-Zz) (:text |fn)
                                              |b $ %{} :Expr (:at 1686547921960) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686547922088) (:by |B1y7Rc-Zz) (:text |e)
                                                  |b $ %{} :Leaf (:at 1686547922551) (:by |B1y7Rc-Zz) (:text |d!)
                                              |h $ %{} :Expr (:at 1686547923154) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686547925983) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1686547927170) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |h $ %{} :Expr (:at 1686547927467) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686547932114) (:by |B1y7Rc-Zz) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1686547932799) (:by |B1y7Rc-Zz) (:text |state)
                                                      |h $ %{} :Leaf (:at 1687674982608) (:by |B1y7Rc-Zz) (:text |:filter?)
                                                      |l $ %{} :Expr (:at 1686805978689) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1686805977775) (:by |B1y7Rc-Zz) (:text |not)
                                                          |b $ %{} :Expr (:at 1686805981399) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1687674852070) (:by |B1y7Rc-Zz) (:text |:filter?)
                                                              |b $ %{} :Leaf (:at 1686805981399) (:by |B1y7Rc-Zz) (:text |state)
                              |X $ %{} :Expr (:at 1686547810943) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686547811760) (:by |B1y7Rc-Zz) (:text |input)
                                  |b $ %{} :Expr (:at 1686547811980) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686547812346) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1686547812637) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686548305310) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1686548307213) (:by |B1y7Rc-Zz) (:text |css-filter)
                                      |h $ %{} :Expr (:at 1686547905020) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686547905975) (:by |B1y7Rc-Zz) (:text |:value)
                                          |b $ %{} :Expr (:at 1686547908242) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686547913699) (:by |B1y7Rc-Zz) (:text |:filter)
                                              |b $ %{} :Leaf (:at 1686547915060) (:by |B1y7Rc-Zz) (:text |state)
                                      |l $ %{} :Expr (:at 1686547916810) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686547921198) (:by |B1y7Rc-Zz) (:text |:on-input)
                                          |b $ %{} :Expr (:at 1686547921463) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686547921704) (:by |B1y7Rc-Zz) (:text |fn)
                                              |b $ %{} :Expr (:at 1686547921960) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686547922088) (:by |B1y7Rc-Zz) (:text |e)
                                                  |b $ %{} :Leaf (:at 1686547922551) (:by |B1y7Rc-Zz) (:text |d!)
                                              |h $ %{} :Expr (:at 1686547923154) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686547925983) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1686547927170) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |h $ %{} :Expr (:at 1686547927467) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686547932114) (:by |B1y7Rc-Zz) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1686547932799) (:by |B1y7Rc-Zz) (:text |state)
                                                      |h $ %{} :Leaf (:at 1686547938656) (:by |B1y7Rc-Zz) (:text |:filter)
                                                      |l $ %{} :Expr (:at 1686547939196) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1686547941361) (:by |B1y7Rc-Zz) (:text |:value)
                                                          |b $ %{} :Leaf (:at 1686547941578) (:by |B1y7Rc-Zz) (:text |e)
                              |Z $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |input)
                                  |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:type)
                                          |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text "|\"checkbox")
                                      |h $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:style)
                                          |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:cursor)
                                                  |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:pointer)
                                              |h $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:opacity)
                                                  |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |0.8)
                                      |l $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:checked)
                                          |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:all-log?)
                                              |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |state)
                                      |o $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:on-input)
                                          |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |fn)
                                              |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |e)
                                                  |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |d!)
                                              |h $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |h $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |state)
                                                      |h $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:all-log?)
                                                      |l $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |not)
                                                          |b $ %{} :Expr (:at 1695730990816) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |:all-log?)
                                                              |b $ %{} :Leaf (:at 1695730990816) (:by |B1y7Rc-Zz) (:text |state)
                              |a $ %{} :Expr (:at 1695730994171) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730994171) (:by |B1y7Rc-Zz) (:text |<>)
                                  |b $ %{} :Leaf (:at 1695730994171) (:by |B1y7Rc-Zz) (:text "|\"All log?")
                              |aT $ %{} :Expr (:at 1695731093327) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |b $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |:arrow-down)
                                  |h $ %{} :Expr (:at 1695731093327) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1695731093327) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |:font-size)
                                          |b $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |14)
                                      |h $ %{} :Expr (:at 1695731093327) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |css-down-icon)
                                      |l $ %{} :Expr (:at 1695731093327) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |:color)
                                          |b $ %{} :Expr (:at 1695731093327) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |b $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |0)
                                              |h $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |0)
                                              |l $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |80)
                                  |l $ %{} :Leaf (:at 1695731093327) (:by |B1y7Rc-Zz) (:text |on-scroll-down!)
                              |b $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |if-not)
                                  |b $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |empty?)
                                      |b $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |:content)
                                          |b $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |process)
                                  |h $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |a)
                                      |b $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |{})
                                          |b $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |:on-click)
                                              |b $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |b $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |e)
                                                      |b $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |h $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |b $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |:process/shorten-content)
                                                      |h $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |:pid)
                                                          |b $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |process)
                                          |h $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |:style)
                                              |b $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |style/link)
                                      |h $ %{} :Expr (:at 1686805899180) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text |<>)
                                          |b $ %{} :Leaf (:at 1686805899180) (:by |B1y7Rc-Zz) (:text "|\"Clear")
                              |e $ %{} :Expr (:at 1695731011995) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695731011995) (:by |B1y7Rc-Zz) (:text |=<)
                                  |b $ %{} :Leaf (:at 1695731011995) (:by |B1y7Rc-Zz) (:text |8)
                                  |h $ %{} :Leaf (:at 1695731011995) (:by |B1y7Rc-Zz) (:text |nil)
                              |lT $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |input)
                                  |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |:type)
                                          |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text "|\"checkbox")
                                      |h $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |:style)
                                          |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |:cursor)
                                                  |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |:pointer)
                                              |h $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |:opacity)
                                                  |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |0.8)
                                      |l $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |:checked)
                                          |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697002952056) (:by |B1y7Rc-Zz) (:text |:hide-thread-info?)
                                              |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |state)
                                      |o $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |:on-input)
                                          |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |fn)
                                              |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |e)
                                                  |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |d!)
                                              |h $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |h $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |state)
                                                      |h $ %{} :Leaf (:at 1697002954556) (:by |B1y7Rc-Zz) (:text |:hide-thread-info?)
                                                      |l $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |not)
                                                          |b $ %{} :Expr (:at 1697002935282) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1697002956031) (:by |B1y7Rc-Zz) (:text |:hide-thread-info?)
                                                              |b $ %{} :Leaf (:at 1697002935282) (:by |B1y7Rc-Zz) (:text |state)
                              |lj $ %{} :Expr (:at 1697002937144) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1697002937144) (:by |B1y7Rc-Zz) (:text |<>)
                                  |b $ %{} :Leaf (:at 1697002942091) (:by |B1y7Rc-Zz) (:text "|\"HideThreadInfo?")
                              |m $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |input)
                                  |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:type)
                                          |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text "|\"checkbox")
                                      |h $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:style)
                                          |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:cursor)
                                                  |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:pointer)
                                              |h $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:opacity)
                                                  |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |0.8)
                                      |l $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:checked)
                                          |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:wrap?)
                                              |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |state)
                                      |o $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:on-input)
                                          |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |fn)
                                              |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |e)
                                                  |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |d!)
                                              |h $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |h $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |assoc)
                                                      |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |state)
                                                      |h $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:wrap?)
                                                      |l $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |not)
                                                          |b $ %{} :Expr (:at 1697003296330) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |:wrap?)
                                                              |b $ %{} :Leaf (:at 1697003296330) (:by |B1y7Rc-Zz) (:text |state)
                              |o $ %{} :Expr (:at 1697003292724) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1697003292724) (:by |B1y7Rc-Zz) (:text |<>)
                                  |b $ %{} :Leaf (:at 1697003292724) (:by |B1y7Rc-Zz) (:text "|\"Wrap?")
                          |e $ %{} :Expr (:at 1704129782258) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1704129784257) (:by |B1y7Rc-Zz) (:text |comp-switcher)
                              |X $ %{} :Expr (:at 1704129887910) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704129888266) (:by |B1y7Rc-Zz) (:text |>>)
                                  |b $ %{} :Leaf (:at 1704129889144) (:by |B1y7Rc-Zz) (:text |states)
                                  |h $ %{} :Leaf (:at 1704129890645) (:by |B1y7Rc-Zz) (:text |:switcher)
                              |b $ %{} :Expr (:at 1704129784880) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704129787063) (:by |B1y7Rc-Zz) (:text |get)
                                  |b $ %{} :Leaf (:at 1704129789301) (:by |B1y7Rc-Zz) (:text |router-data)
                                  |h $ %{} :Leaf (:at 1704129790494) (:by |B1y7Rc-Zz) (:text |:dict)
                          |h $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |div)
                              |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |{})
                                  |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:class-name)
                                      |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |css-toolbar)
                              |h $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |span)
                                  |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |{})
                                      |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                          |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |or)
                                              |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:title)
                                                  |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |process)
                                              |h $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text "|\"Task")
                                      |h $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:class-name)
                                          |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |css/font-fancy)
                                      |l $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:style)
                                          |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |merge)
                                              |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |style/text)
                                              |h $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |{})
                                                  |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:padding)
                                                      |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                              |l $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |=<)
                                  |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |16)
                                  |h $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |nil)
                              |o $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |<>)
                                  |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:command)
                                      |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |process)
                                  |h $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |style/text)
                              |q $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |=<)
                                  |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |16)
                                  |h $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |nil)
                              |s $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |<>)
                                  |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:cwd)
                                      |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |process)
                                  |h $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |merge)
                                      |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |style/text)
                                      |h $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |{})
                                          |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:font-size)
                                              |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |12)
                                          |h $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:color)
                                              |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |hsl)
                                                  |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |0)
                                                  |h $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |0)
                                                  |l $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |70)
                              |t $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |=<)
                                  |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |16)
                                  |h $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |nil)
                              |u $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |<>)
                                  |b $ %{} :Expr (:at 1695730951015) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |:pid)
                                      |b $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |process)
                                  |h $ %{} :Leaf (:at 1695730951015) (:by |B1y7Rc-Zz) (:text |style/text)
                              |uT $ %{} :Expr (:at 1697003248594) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1697003248594) (:by |B1y7Rc-Zz) (:text |=<)
                                  |b $ %{} :Leaf (:at 1697003252106) (:by |B1y7Rc-Zz) (:text |8)
                                  |h $ %{} :Leaf (:at 1697003248594) (:by |B1y7Rc-Zz) (:text |nil)
                              |v $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |if)
                                  |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:alive?)
                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |process)
                                  |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |a)
                                      |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |{})
                                          |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:class-name)
                                              |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |css/link)
                                          |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:style)
                                              |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |{})
                                                  |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:color)
                                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:red)
                                                  |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:border-color)
                                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:red)
                                          |l $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:on-click)
                                              |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |e)
                                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:effect/kill)
                                                      |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:pid)
                                                          |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |process)
                                      |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |<>)
                                          |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text "|\"Kill")
                                  |l $ %{} :Expr (:at 1698910566546) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1698910567952) (:by |B1y7Rc-Zz) (:text |div)
                                      |L $ %{} :Expr (:at 1698910570992) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1698910570787) (:by |B1y7Rc-Zz) (:text |{})
                                      |T $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |a)
                                          |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                  |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |css/link)
                                              |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                                  |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text "|\"Redo")
                                              |l $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:on-click)
                                                  |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |e)
                                                          |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:effect/run)
                                                          |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |{})
                                                              |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:cwd)
                                                                  |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:cwd)
                                                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |process)
                                                              |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:command)
                                                                  |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:command)
                                                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |process)
                                                              |l $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:title)
                                                                  |b $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:title)
                                                                      |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |process)
                                                              |o $ %{} :Expr (:at 1697705842513) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1697705847554) (:by |B1y7Rc-Zz) (:text |:jump?)
                                                                  |b $ %{} :Leaf (:at 1697705846442) (:by |B1y7Rc-Zz) (:text |true)
                                                      |l $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:process/remove-dead)
                                                          |h $ %{} :Expr (:at 1697003245698) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |:pid)
                                                              |b $ %{} :Leaf (:at 1697003245698) (:by |B1y7Rc-Zz) (:text |process)
                                      |b $ %{} :Expr (:at 1698910573427) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1698910573427) (:by |B1y7Rc-Zz) (:text |=<)
                                          |b $ %{} :Leaf (:at 1698910573427) (:by |B1y7Rc-Zz) (:text |8)
                                          |h $ %{} :Leaf (:at 1698910573427) (:by |B1y7Rc-Zz) (:text |nil)
                                      |h $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |a)
                                          |b $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |{})
                                              |b $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                  |b $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |css/link)
                                              |h $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                                  |b $ %{} :Leaf (:at 1698910602616) (:by |B1y7Rc-Zz) (:text "|\"Drop")
                                              |l $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |:on-click)
                                                  |b $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |b $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |e)
                                                          |b $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |d!)
                                                      |e $ %{} :Expr (:at 1698910647498) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1698910647498) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |b $ %{} :Leaf (:at 1698910647498) (:by |B1y7Rc-Zz) (:text |:router/change)
                                                          |h $ %{} :Expr (:at 1698910647498) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1698910647498) (:by |B1y7Rc-Zz) (:text |{})
                                                              |b $ %{} :Expr (:at 1698910647498) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1698910647498) (:by |B1y7Rc-Zz) (:text |:name)
                                                                  |b $ %{} :Leaf (:at 1698910651910) (:by |B1y7Rc-Zz) (:text |:home)
                                                      |h $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |d!)
                                                          |b $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |:process/remove-dead)
                                                          |h $ %{} :Expr (:at 1698910575656) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |:pid)
                                                              |b $ %{} :Leaf (:at 1698910575656) (:by |B1y7Rc-Zz) (:text |process)
                      |u $ %{} :Expr (:at 1686806211323) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686806212671) (:by |B1y7Rc-Zz) (:text |=<)
                          |b $ %{} :Leaf (:at 1686806213217) (:by |B1y7Rc-Zz) (:text |nil)
                          |h $ %{} :Leaf (:at 1686806213858) (:by |B1y7Rc-Zz) (:text |8)
                      |x $ %{} :Expr (:at 1686806160425) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1686806161028) (:by |B1y7Rc-Zz) (:text |div)
                          |L $ %{} :Expr (:at 1686806162573) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686806161526) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686806178273) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686806178273) (:by |B1y7Rc-Zz) (:text |:class-name)
                                  |b $ %{} :Expr (:at 1690435402628) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1690435404879) (:by |B1y7Rc-Zz) (:text |str-spaced)
                                      |L $ %{} :Leaf (:at 1690435408816) (:by |B1y7Rc-Zz) (:text "|\"scroll-area")
                                      |T $ %{} :Leaf (:at 1686806178273) (:by |B1y7Rc-Zz) (:text |css-logs-list)
                          |T $ %{} :Expr (:at 1539099152080) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |list->)
                              |j $ %{} :Expr (:at 1539099152080) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |{})
                                  |n $ %{} :Expr (:at 1686806004051) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686806005920) (:by |B1y7Rc-Zz) (:text |:style)
                                      |b $ %{} :Expr (:at 1686806006650) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686806006875) (:by |B1y7Rc-Zz) (:text |{})
                                          |b $ %{} :Expr (:at 1686806007482) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686806061886) (:by |B1y7Rc-Zz) (:text |:white-space)
                                              |b $ %{} :Expr (:at 1686806019630) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686806020520) (:by |B1y7Rc-Zz) (:text |if)
                                                  |b $ %{} :Expr (:at 1686806020763) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686806022290) (:by |B1y7Rc-Zz) (:text |:wrap?)
                                                      |b $ %{} :Leaf (:at 1686806023223) (:by |B1y7Rc-Zz) (:text |state)
                                                  |h $ %{} :Leaf (:at 1695106730726) (:by |B1y7Rc-Zz) (:text "|\"pre-wrap")
                                                  |l $ %{} :Leaf (:at 1686806081627) (:by |B1y7Rc-Zz) (:text "|\"pre")
                              |r $ %{} :Expr (:at 1539099152080) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629798195855) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Expr (:at 1539099152080) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:content)
                                      |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |process)
                                  |n $ %{} :Expr (:at 1686547997059) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686547999765) (:by |B1y7Rc-Zz) (:text |filter)
                                      |b $ %{} :Expr (:at 1686548000362) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686548001339) (:by |B1y7Rc-Zz) (:text |fn)
                                          |b $ %{} :Expr (:at 1686548001605) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686548002176) (:by |B1y7Rc-Zz) (:text |chunk)
                                          |h $ %{} :Expr (:at 1686548003068) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1686548003465) (:by |B1y7Rc-Zz) (:text |if)
                                              |b $ %{} :Expr (:at 1687674995464) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1687675016775) (:by |B1y7Rc-Zz) (:text |or)
                                                  |L $ %{} :Expr (:at 1687675014215) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1687675014937) (:by |B1y7Rc-Zz) (:text |not)
                                                      |T $ %{} :Expr (:at 1687674997017) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1687674997017) (:by |B1y7Rc-Zz) (:text |:filter?)
                                                          |b $ %{} :Leaf (:at 1687674997017) (:by |B1y7Rc-Zz) (:text |state)
                                                  |T $ %{} :Expr (:at 1697002691016) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686548022028) (:by |B1y7Rc-Zz) (:text |blank?)
                                                      |b $ %{} :Expr (:at 1686548023307) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1686548024346) (:by |B1y7Rc-Zz) (:text |:filter)
                                                          |b $ %{} :Leaf (:at 1686548025030) (:by |B1y7Rc-Zz) (:text |state)
                                              |e $ %{} :Leaf (:at 1686548060718) (:by |B1y7Rc-Zz) (:text |true)
                                              |h $ %{} :Expr (:at 1686548028970) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1686548033027) (:by |B1y7Rc-Zz) (:text |.includes?)
                                                  |b $ %{} :Expr (:at 1686548037052) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1686548040060) (:by |B1y7Rc-Zz) (:text |:data)
                                                      |T $ %{} :Leaf (:at 1686548035830) (:by |B1y7Rc-Zz) (:text |chunk)
                                                  |h $ %{} :Expr (:at 1686548044887) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1686548044887) (:by |B1y7Rc-Zz) (:text |:filter)
                                                      |b $ %{} :Leaf (:at 1686548044887) (:by |B1y7Rc-Zz) (:text |state)
                                  |p $ %{} :Expr (:at 1695730780481) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1695730782360) (:by |B1y7Rc-Zz) (:text |take-last)
                                      |b $ %{} :Expr (:at 1695730882848) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1695730883530) (:by |B1y7Rc-Zz) (:text |if)
                                          |L $ %{} :Expr (:at 1695730884140) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1695730889827) (:by |B1y7Rc-Zz) (:text |:all-log?)
                                              |b $ %{} :Leaf (:at 1695730893754) (:by |B1y7Rc-Zz) (:text |state)
                                          |P $ %{} :Leaf (:at 1695730901421) (:by |B1y7Rc-Zz) (:text |2000)
                                          |T $ %{} :Leaf (:at 1695730810257) (:by |B1y7Rc-Zz) (:text |60)
                                  |r $ %{} :Expr (:at 1539099152080) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629798199595) (:by |B1y7Rc-Zz) (:text |map-indexed)
                                      |j $ %{} :Expr (:at 1539099152080) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1539099152080) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629798202491) (:by |B1y7Rc-Zz) (:text |idx)
                                              |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |chunk)
                                          |r $ %{} :Expr (:at 1629798203872) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629798204613) (:by |B1y7Rc-Zz) (:text |[])
                                              |L $ %{} :Leaf (:at 1629798205513) (:by |B1y7Rc-Zz) (:text |idx)
                                              |T $ %{} :Expr (:at 1539099152080) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1681290892690) (:by |B1y7Rc-Zz) (:text |span)
                                                  |j $ %{} :Expr (:at 1539099152080) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |{})
                                                      |b $ %{} :Expr (:at 1686548274313) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1686548276702) (:by |B1y7Rc-Zz) (:text |:class-name)
                                                          |b $ %{} :Leaf (:at 1686548278962) (:by |B1y7Rc-Zz) (:text |css-log)
                                                      |j $ %{} :Expr (:at 1539099152080) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:style)
                                                          |j $ %{} :Expr (:at 1681290930191) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1681290931685) (:by |B1y7Rc-Zz) (:text |merge)
                                                              |b $ %{} :Expr (:at 1681290931943) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1681290932388) (:by |B1y7Rc-Zz) (:text |if)
                                                                  |b $ %{} :Expr (:at 1681290932910) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1681290934010) (:by |B1y7Rc-Zz) (:text |=)
                                                                      |X $ %{} :Leaf (:at 1681290952328) (:by |B1y7Rc-Zz) (:text |:stderr)
                                                                      |b $ %{} :Expr (:at 1681290932910) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1681290932910) (:by |B1y7Rc-Zz) (:text |:type)
                                                                          |b $ %{} :Leaf (:at 1681290932910) (:by |B1y7Rc-Zz) (:text |chunk)
                                                                  |h $ %{} :Expr (:at 1681290938180) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1681290938611) (:by |B1y7Rc-Zz) (:text |{})
                                                                      |b $ %{} :Expr (:at 1681290938832) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1681290939588) (:by |B1y7Rc-Zz) (:text |:color)
                                                                          |b $ %{} :Leaf (:at 1681290940146) (:by |B1y7Rc-Zz) (:text |:red)
                                                      |r $ %{} :Expr (:at 1539099152080) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:inner-text)
                                                          |j $ %{} :Expr (:at 1686805716563) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1686805717001) (:by |B1y7Rc-Zz) (:text |do)
                                                              |L $ %{} :Expr (:at 1697002838547) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1697002840436) (:by |B1y7Rc-Zz) (:text |if)
                                                                  |L $ %{} :Expr (:at 1697002841605) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1697002841605) (:by |B1y7Rc-Zz) (:text |:hide-thread-info?)
                                                                      |b $ %{} :Leaf (:at 1697002844538) (:by |B1y7Rc-Zz) (:text |state)
                                                                  |T $ %{} :Expr (:at 1697002850217) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1697002874276) (:by |B1y7Rc-Zz) (:text |hide-thread-info)
                                                                      |T $ %{} :Expr (:at 1686805782558) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |b $ %{} :Leaf (:at 1686805782558) (:by |B1y7Rc-Zz) (:text |:data)
                                                                          |h $ %{} :Leaf (:at 1686805782558) (:by |B1y7Rc-Zz) (:text |chunk)
                                                                  |b $ %{} :Expr (:at 1697002859107) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1697002859107) (:by |B1y7Rc-Zz) (:text |:data)
                                                                      |b $ %{} :Leaf (:at 1697002859107) (:by |B1y7Rc-Zz) (:text |chunk)
                                                              |T $ %{} :Expr (:at 1681291042911) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |5 $ %{} :Leaf (:at 1686805808743) (:by |B1y7Rc-Zz) (:text |;)
                                                                  |D $ %{} :Leaf (:at 1681291046459) (:by |B1y7Rc-Zz) (:text |.!replace)
                                                                  |T $ %{} :Expr (:at 1539099152080) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:data)
                                                                      |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |chunk)
                                                                  |b $ %{} :Leaf (:at 1681291050380) (:by |B1y7Rc-Zz) (:text |&newline)
                                                                  |h $ %{} :Expr (:at 1681291052146) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |D $ %{} :Leaf (:at 1681291052817) (:by |B1y7Rc-Zz) (:text |str)
                                                                      |T $ %{} :Leaf (:at 1681291051678) (:by |B1y7Rc-Zz) (:text |&newline)
                                                                      |b $ %{} :Leaf (:at 1686805797154) (:by |B1y7Rc-Zz) (:text |&newline)
                          |b $ %{} :Expr (:at 1686806163834) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686806163834) (:by |B1y7Rc-Zz) (:text |=<)
                              |b $ %{} :Leaf (:at 1686806163834) (:by |B1y7Rc-Zz) (:text |nil)
                              |h $ %{} :Leaf (:at 1686806163834) (:by |B1y7Rc-Zz) (:text |200)
        |comp-switcher $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1704129792312) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1704129795140) (:by |B1y7Rc-Zz) (:text |defcomp)
              |b $ %{} :Leaf (:at 1704129792312) (:by |B1y7Rc-Zz) (:text |comp-switcher)
              |h $ %{} :Expr (:at 1704129792312) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1704129882967) (:by |B1y7Rc-Zz) (:text |states)
                  |T $ %{} :Leaf (:at 1704129799576) (:by |B1y7Rc-Zz) (:text |dict)
              |l $ %{} :Expr (:at 1704129816140) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1704129816835) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1704129817151) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1704129817281) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1704129874972) (:by |B1y7Rc-Zz) (:text |menu-plugin)
                          |b $ %{} :Expr (:at 1704129875624) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1704129875945) (:by |B1y7Rc-Zz) (:text |use-modal-menu)
                              |b $ %{} :Expr (:at 1704129876423) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704129876900) (:by |B1y7Rc-Zz) (:text |>>)
                                  |b $ %{} :Leaf (:at 1704129877910) (:by |B1y7Rc-Zz) (:text |states)
                                  |h $ %{} :Leaf (:at 1704129897824) (:by |B1y7Rc-Zz) (:text |:menu)
                              |h $ %{} :Expr (:at 1704129900994) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704129901241) (:by |B1y7Rc-Zz) (:text |{})
                                  |b $ %{} :Expr (:at 1704129903583) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1704129906001) (:by |B1y7Rc-Zz) (:text |:title)
                                      |b $ %{} :Leaf (:at 1704129909431) (:by |B1y7Rc-Zz) (:text "|\"Switch process")
                                  |h $ %{} :Expr (:at 1704129912479) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1704129913790) (:by |B1y7Rc-Zz) (:text |:items)
                                      |b $ %{} :Expr (:at 1704129995866) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1704129996592) (:by |B1y7Rc-Zz) (:text |->)
                                          |b $ %{} :Leaf (:at 1704129997564) (:by |B1y7Rc-Zz) (:text |dict)
                                          |e $ %{} :Expr (:at 1704130101532) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704130102420) (:by |B1y7Rc-Zz) (:text |either)
                                              |b $ %{} :Expr (:at 1704130102951) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704130103248) (:by |B1y7Rc-Zz) (:text |{})
                                          |h $ %{} :Expr (:at 1704130002410) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704130003825) (:by |B1y7Rc-Zz) (:text |.map-list)
                                              |b $ %{} :Expr (:at 1704130004151) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704130004704) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |b $ %{} :Expr (:at 1704130017191) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1704130018305) (:by |B1y7Rc-Zz) (:text |pair)
                                                  |h $ %{} :Expr (:at 1704130038404) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1704130038863) (:by |B1y7Rc-Zz) (:text |let)
                                                      |b $ %{} :Expr (:at 1704130039097) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Expr (:at 1704130039754) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704130044489) (:by |B1y7Rc-Zz) (:text |proc)
                                                              |b $ %{} :Expr (:at 1704130045141) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704130046216) (:by |B1y7Rc-Zz) (:text |nth)
                                                                  |b $ %{} :Leaf (:at 1704130046903) (:by |B1y7Rc-Zz) (:text |pair)
                                                                  |h $ %{} :Leaf (:at 1704130047241) (:by |B1y7Rc-Zz) (:text |1)
                                                      |h $ %{} :Expr (:at 1704130049365) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704130049681) (:by |B1y7Rc-Zz) (:text |{})
                                                          |b $ %{} :Expr (:at 1704130050042) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704130050987) (:by |B1y7Rc-Zz) (:text |:value)
                                                              |b $ %{} :Expr (:at 1704130051801) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704130078870) (:by |B1y7Rc-Zz) (:text |:pid)
                                                                  |b $ %{} :Leaf (:at 1704130053577) (:by |B1y7Rc-Zz) (:text |proc)
                                                          |h $ %{} :Expr (:at 1704130055252) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704130056590) (:by |B1y7Rc-Zz) (:text |:display)
                                                              |b $ %{} :Expr (:at 1704130058500) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704130073676) (:by |B1y7Rc-Zz) (:text |:title)
                                                                  |b $ %{} :Leaf (:at 1704130082783) (:by |B1y7Rc-Zz) (:text |proc)
                                  |l $ %{} :Expr (:at 1704129937986) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1704129940117) (:by |B1y7Rc-Zz) (:text |:on-result)
                                      |b $ %{} :Expr (:at 1704129940375) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1704129940616) (:by |B1y7Rc-Zz) (:text |fn)
                                          |b $ %{} :Expr (:at 1704129940969) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704129942862) (:by |B1y7Rc-Zz) (:text |result)
                                              |b $ %{} :Leaf (:at 1704129943291) (:by |B1y7Rc-Zz) (:text |d!)
                                          |h $ %{} :Expr (:at 1704130158736) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |d!)
                                              |b $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |:router/change)
                                              |h $ %{} :Expr (:at 1704130158736) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |{})
                                                  |b $ %{} :Expr (:at 1704130158736) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |:name)
                                                      |b $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |:process)
                                                  |h $ %{} :Expr (:at 1704130158736) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |:params)
                                                      |b $ %{} :Expr (:at 1704130158736) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |{})
                                                          |b $ %{} :Expr (:at 1704130158736) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704130158736) (:by |B1y7Rc-Zz) (:text |:id)
                                                              |b $ %{} :Expr (:at 1704130158736) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704130180095) (:by |B1y7Rc-Zz) (:text |:value)
                                                                  |b $ %{} :Leaf (:at 1704130175895) (:by |B1y7Rc-Zz) (:text |result)
                  |T $ %{} :Expr (:at 1704129800161) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1704129801537) (:by |B1y7Rc-Zz) (:text |div)
                      |b $ %{} :Expr (:at 1704129802926) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1704129805758) (:by |B1y7Rc-Zz) (:text |{})
                      |h $ %{} :Expr (:at 1704129806217) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1704129962548) (:by |B1y7Rc-Zz) (:text |span)
                          |b $ %{} :Expr (:at 1704129963049) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1704129963664) (:by |B1y7Rc-Zz) (:text |{})
                              |T $ %{} :Expr (:at 1704129964181) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1704129966263) (:by |B1y7Rc-Zz) (:text |:inner-text)
                                  |T $ %{} :Leaf (:at 1704129811707) (:by |B1y7Rc-Zz) (:text "|\"Switch")
                              |b $ %{} :Expr (:at 1704129966661) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1704129968580) (:by |B1y7Rc-Zz) (:text |:on-click)
                                  |b $ %{} :Expr (:at 1704129968862) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1704129970745) (:by |B1y7Rc-Zz) (:text |fn)
                                      |b $ %{} :Expr (:at 1704129970959) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1704129971189) (:by |B1y7Rc-Zz) (:text |e)
                                          |b $ %{} :Leaf (:at 1704129971701) (:by |B1y7Rc-Zz) (:text |d!)
                                      |h $ %{} :Expr (:at 1704129972065) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1704129973244) (:by |B1y7Rc-Zz) (:text |.show)
                                          |b $ %{} :Leaf (:at 1704129976737) (:by |B1y7Rc-Zz) (:text |menu-plugin)
                                          |h $ %{} :Leaf (:at 1704129977369) (:by |B1y7Rc-Zz) (:text |d!)
                      |l $ %{} :Expr (:at 1704129949244) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1704129956667) (:by |B1y7Rc-Zz) (:text |.render)
                          |b $ %{} :Leaf (:at 1704129953426) (:by |B1y7Rc-Zz) (:text |menu-plugin)
        |css-down-icon $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1690435717917) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1690435719843) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1690435717917) (:by |B1y7Rc-Zz) (:text |css-down-icon)
              |h $ %{} :Expr (:at 1690435717917) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690435721789) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1690435722485) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1690435723319) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |b $ %{} :Expr (:at 1690435724631) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1690435723979) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1690435725373) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690435727322) (:by |B1y7Rc-Zz) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1690435728508) (:by |B1y7Rc-Zz) (:text |0.8)
                          |h $ %{} :Expr (:at 1690435750050) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690435751838) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |b $ %{} :Leaf (:at 1690435752960) (:by |B1y7Rc-Zz) (:text |:pointer)
                  |h $ %{} :Expr (:at 1690435722485) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1690435733268) (:by |B1y7Rc-Zz) (:text "|\"&:hover")
                      |b $ %{} :Expr (:at 1690435724631) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1690435723979) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1690435725373) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1690435727322) (:by |B1y7Rc-Zz) (:text |:opacity)
                              |b $ %{} :Leaf (:at 1690435736144) (:by |B1y7Rc-Zz) (:text |1)
        |css-filter $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548307549) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548308864) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548307549) (:by |B1y7Rc-Zz) (:text |css-filter)
              |h $ %{} :Expr (:at 1686548309850) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548311179) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548309545) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548313253) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548317763) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1686548318666) (:by |B1y7Rc-Zz) (:text |merge)
                          |T $ %{} :Leaf (:at 1686548309545) (:by |B1y7Rc-Zz) (:text |ui/input)
                          |b $ %{} :Expr (:at 1686548319152) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548319450) (:by |B1y7Rc-Zz) (:text |{})
                              |X $ %{} :Expr (:at 1686548337224) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548338042) (:by |B1y7Rc-Zz) (:text |:color)
                                  |b $ %{} :Expr (:at 1686548338246) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548338539) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686548338792) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686548339017) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686548339546) (:by |B1y7Rc-Zz) (:text |100)
                              |b $ %{} :Expr (:at 1686548319789) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548322553) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1686548322787) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548323085) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686548323379) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686548323632) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686548324522) (:by |B1y7Rc-Zz) (:text |100)
                                      |o $ %{} :Leaf (:at 1686548335414) (:by |B1y7Rc-Zz) (:text |0)
                              |h $ %{} :Expr (:at 1686723425690) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686723431041) (:by |B1y7Rc-Zz) (:text |:border-color)
                                  |b $ %{} :Expr (:at 1686723431237) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686723431558) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686723431953) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686723432207) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686723443270) (:by |B1y7Rc-Zz) (:text |100)
                                      |o $ %{} :Leaf (:at 1686723445219) (:by |B1y7Rc-Zz) (:text |0.4)
        |css-log $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548279396) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548280462) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548279396) (:by |B1y7Rc-Zz) (:text |css-log)
              |h $ %{} :Expr (:at 1686548281313) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548282985) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548283389) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548285113) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548281051) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548281051) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1686548281051) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548281051) (:by |B1y7Rc-Zz) (:text |:font-size)
                              |b $ %{} :Leaf (:at 1686548281051) (:by |B1y7Rc-Zz) (:text |12)
                          |h $ %{} :Expr (:at 1686548281051) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548281051) (:by |B1y7Rc-Zz) (:text |:margin)
                              |b $ %{} :Leaf (:at 1686548281051) (:by |B1y7Rc-Zz) (:text "|\"0")
                          |l $ %{} :Expr (:at 1686548281051) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548281051) (:by |B1y7Rc-Zz) (:text |:font-family)
                              |b $ %{} :Leaf (:at 1686548281051) (:by |B1y7Rc-Zz) (:text |ui/font-code)
        |css-logs-list $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548258430) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548259786) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548258430) (:by |B1y7Rc-Zz) (:text |css-logs-list)
              |h $ %{} :Expr (:at 1686548260922) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548261358) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548262160) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548265715) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |ui/flex)
                          |l $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |{})
                              |X $ %{} :Expr (:at 1686806199462) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686806199462) (:by |B1y7Rc-Zz) (:text |:overflow)
                                  |b $ %{} :Leaf (:at 1686806199462) (:by |B1y7Rc-Zz) (:text |:auto)
                              |b $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:border)
                                  |b $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |str)
                                      |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text "|\"1px solid ")
                                      |h $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |0)
                                          |h $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |0)
                                          |l $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |100)
                                          |o $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |0.3)
                              |h $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |8)
                              |l $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:background-color)
                                  |b $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |hsl)
                                      |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |0)
                                      |h $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |0)
                                      |l $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |0)
                                      |o $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |0.5)
                              |q $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:overflow)
                                  |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:auto)
                              |s $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:word-break)
                                  |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:break-all)
                              |t $ %{} :Expr (:at 1686548260643) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |:line-height)
                                  |b $ %{} :Leaf (:at 1686548260643) (:by |B1y7Rc-Zz) (:text |1.4)
        |css-process $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548189879) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548191300) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548189879) (:by |B1y7Rc-Zz) (:text |css-process)
              |h $ %{} :Expr (:at 1686548193444) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548193874) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548194319) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548195778) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548191988) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text |ui/flex)
                          |h $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text |ui/column)
                          |l $ %{} :Expr (:at 1686548191988) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548191988) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1686806102912) (:by |B1y7Rc-Zz) (:text |;)
                                  |T $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text |:padding)
                                  |b $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text "||8px 16px")
                              |h $ %{} :Expr (:at 1686548191988) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text |:overflow)
                                  |b $ %{} :Leaf (:at 1686548191988) (:by |B1y7Rc-Zz) (:text |:auto)
                              |l $ %{} :Expr (:at 1700717310988) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1700717325818) (:by |B1y7Rc-Zz) (:text |:color)
                                  |b $ %{} :Leaf (:at 1700717343256) (:by |B1y7Rc-Zz) (:text "|\"#aaa")
        |css-toolbar $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1686548220295) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1686548221878) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1686548220295) (:by |B1y7Rc-Zz) (:text |css-toolbar)
              |h $ %{} :Expr (:at 1686548223228) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1686548224154) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1686548225262) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1686548228451) (:by |B1y7Rc-Zz) (:text "|\"&")
                      |T $ %{} :Expr (:at 1686548222945) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1686548222945) (:by |B1y7Rc-Zz) (:text |merge)
                          |b $ %{} :Leaf (:at 1686548222945) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                          |h $ %{} :Expr (:at 1686548222945) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1686548222945) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1686548222945) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1686548222945) (:by |B1y7Rc-Zz) (:text |:font-family)
                                  |b $ %{} :Leaf (:at 1686548222945) (:by |B1y7Rc-Zz) (:text |ui/font-code)
        |hide-thread-info $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1697002875819) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1697002875819) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1697002875819) (:by |B1y7Rc-Zz) (:text |hide-thread-info)
              |h $ %{} :Expr (:at 1697002875819) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1697002880053) (:by |B1y7Rc-Zz) (:text |text)
              |l $ %{} :Expr (:at 1697002902116) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1697002907220) (:by |B1y7Rc-Zz) (:text |.!replace)
                  |b $ %{} :Leaf (:at 1697002908493) (:by |B1y7Rc-Zz) (:text |text)
                  |h $ %{} :Leaf (:at 1697002990861) (:by |B1y7Rc-Zz) (:text |thread-info-pattern)
                  |l $ %{} :Leaf (:at 1697002911771) (:by |B1y7Rc-Zz) (:text "|\"")
        |on-scroll-down! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1690435459695) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1690435460881) (:by |B1y7Rc-Zz) (:text |defn)
              |b $ %{} :Leaf (:at 1690435459695) (:by |B1y7Rc-Zz) (:text |on-scroll-down!)
              |h $ %{} :Expr (:at 1690435459695) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690435462303) (:by |B1y7Rc-Zz) (:text |e)
                  |b $ %{} :Leaf (:at 1690435462896) (:by |B1y7Rc-Zz) (:text |d!)
              |l $ %{} :Expr (:at 1690435463486) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1690435469229) (:by |B1y7Rc-Zz) (:text |if-let)
                  |b $ %{} :Expr (:at 1690435469495) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1690435470238) (:by |B1y7Rc-Zz) (:text |el)
                      |b $ %{} :Expr (:at 1690435470791) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1690435479296) (:by |B1y7Rc-Zz) (:text |js/document.querySelector)
                          |b $ %{} :Leaf (:at 1690435489507) (:by |B1y7Rc-Zz) (:text "|\".scroll-area")
                  |h $ %{} :Expr (:at 1690435523207) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1690435524187) (:by |B1y7Rc-Zz) (:text |set!)
                      |T $ %{} :Expr (:at 1690435491335) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1690435521512) (:by |B1y7Rc-Zz) (:text |.-scrollTop)
                          |b $ %{} :Leaf (:at 1690435497659) (:by |B1y7Rc-Zz) (:text |el)
                      |b $ %{} :Expr (:at 1690435525428) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1690435528574) (:by |B1y7Rc-Zz) (:text |.-scrollHeight)
                          |b $ %{} :Leaf (:at 1690435528925) (:by |B1y7Rc-Zz) (:text |el)
        |thread-info-pattern $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1697002991183) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1697002991183) (:by |B1y7Rc-Zz) (:text |def)
              |b $ %{} :Leaf (:at 1697002991183) (:by |B1y7Rc-Zz) (:text |thread-info-pattern)
              |h $ %{} :Expr (:at 1697002991183) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1697002996360) (:by |B1y7Rc-Zz) (:text |new)
                  |b $ %{} :Leaf (:at 1697002999064) (:by |B1y7Rc-Zz) (:text |js/RegExp)
                  |h $ %{} :Leaf (:at 1697003007006) (:by |B1y7Rc-Zz) (:text "|\"^[\\d\\s\\:\\-\\.\\+]+\\s+(\\[([\\w\\d\\s\\:\\,])+\\]\\s?)+")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099152080) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |app.comp.process-detail)
            |r $ %{} :Expr (:at 1539099152080) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099152080) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1629789943767) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099152080) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1539099152080) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1539099152080) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1553327480838) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099152080) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1629789945561) (:by |B1y7Rc-Zz) (:text |>>)
                        |x $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |span)
                        |y $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |div)
                        |yT $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |pre)
                        |yj $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |list->)
                        |yr $ %{} :Leaf (:at 1553453272598) (:by |B1y7Rc-Zz) (:text |code)
                        |yv $ %{} :Leaf (:at 1553536505105) (:by |B1y7Rc-Zz) (:text |button)
                        |z $ %{} :Leaf (:at 1686547734068) (:by |B1y7Rc-Zz) (:text |a)
                        |zD $ %{} :Leaf (:at 1686547823372) (:by |B1y7Rc-Zz) (:text |input)
                |y $ %{} :Expr (:at 1539099152080) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099152080) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1539099152080) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099152080) (:by |root)
                      :data $ {}
                        |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |map-with-index)
                |yj $ %{} :Expr (:at 1539099152080) (:by |root)
                  :data $ {}
                    |j $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099152080) (:by |root) (:text |style)
                |z $ %{} :Expr (:at 1686548197809) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1686548198865) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1686548199697) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1686548199897) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1686548201008) (:by |B1y7Rc-Zz) (:text |defstyle)
                |zD $ %{} :Expr (:at 1690435637568) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1690435645991) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |b $ %{} :Leaf (:at 1690435647264) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1690435647515) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1690435647851) (:by |B1y7Rc-Zz) (:text |comp-icon)
                |zP $ %{} :Expr (:at 1692169804031) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1692169809815) (:by |B1y7Rc-Zz) (:text |respo-ui.css)
                    |b $ %{} :Leaf (:at 1692169810544) (:by |B1y7Rc-Zz) (:text |:as)
                    |h $ %{} :Leaf (:at 1692169811125) (:by |B1y7Rc-Zz) (:text |css)
                |zY $ %{} :Expr (:at 1704129845715) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1704129856375) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |b $ %{} :Leaf (:at 1704129858216) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1704129858493) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1704129859639) (:by |B1y7Rc-Zz) (:text |use-modal-menu)
    |app.comp.profile $ %{} :FileEntry
      :defs $ {}
        |comp-profile $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541010211) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |comp-profile)
              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |j $ %{} :Leaf (:at 1524070827396) (:by |root) (:text |members)
              |v $ %{} :Expr (:at 1500541010211) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                          |j $ %{} :Expr (:at 1519314673230) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1519314674218) (:by |root) (:text |merge)
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui/flex)
                              |j $ %{} :Expr (:at 1519314674864) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1519314675207) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1519314675496) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1519314677667) (:by |root) (:text |:padding)
                                      |j $ %{} :Leaf (:at 1519314678341) (:by |root) (:text |16)
                  |r $ %{} :Expr (:at 1524070753023) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070753742) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070753977) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070754337) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070764197) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070764960) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1524070765167) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070765499) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1524070765707) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070768913) (:by |root) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1524070771373) (:by |root) (:text |ui/font-fancy)
                                  |r $ %{} :Expr (:at 1524070772863) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070774437) (:by |root) (:text |:font-size)
                                      |j $ %{} :Leaf (:at 1524070786249) (:by |root) (:text |32)
                                  |v $ %{} :Expr (:at 1524070778614) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070781489) (:by |root) (:text |:font-weight)
                                      |j $ %{} :Leaf (:at 1524070782585) (:by |root) (:text |100)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text "||Hello! ")
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |user)
                  |t $ %{} :Expr (:at 1524070801446) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070803450) (:by |root) (:text |=<)
                      |j $ %{} :Leaf (:at 1524070804372) (:by |root) (:text |nil)
                      |r $ %{} :Leaf (:at 1524070805591) (:by |root) (:text |16)
                  |u $ %{} :Expr (:at 1524070806586) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1524070807601) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1524070807801) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070808172) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1524070882494) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070886268) (:by |root) (:text |:style)
                              |j $ %{} :Leaf (:at 1524070890021) (:by |root) (:text |ui/row)
                      |r $ %{} :Expr (:at 1524070808914) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070810352) (:by |root) (:text |<>)
                          |j $ %{} :Leaf (:at 1524070906296) (:by |root) (:text "|\"Members:")
                      |t $ %{} :Expr (:at 1524070907095) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070907693) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1524071002316) (:by |root) (:text |8)
                          |r $ %{} :Leaf (:at 1524070908955) (:by |root) (:text |nil)
                      |v $ %{} :Expr (:at 1524070813822) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070815507) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1524070815884) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070816388) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1524070882494) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070886268) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1524070890021) (:by |root) (:text |ui/row)
                          |r $ %{} :Expr (:at 1524070817648) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629784952974) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Leaf (:at 1524070823331) (:by |root) (:text |members)
                              |n $ %{} :Expr (:at 1629784954305) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629784955471) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1524070849620) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629784958943) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                  |j $ %{} :Expr (:at 1524070854323) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070854836) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1524070855268) (:by |root)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1524070857242) (:by |root) (:text |k)
                                          |r $ %{} :Leaf (:at 1524070860935) (:by |root) (:text |username)
                                      |r $ %{} :Expr (:at 1524070862172) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070862624) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1524070863576) (:by |root) (:text |k)
                                          |r $ %{} :Expr (:at 1524070863870) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070935603) (:by |root) (:text |div)
                                              |b $ %{} :Expr (:at 1524070935915) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070936321) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1524070941378) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070945311) (:by |root) (:text |:style)
                                                      |j $ %{} :Expr (:at 1524070945552) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1524070951279) (:by |root) (:text |{})
                                                          |j $ %{} :Expr (:at 1524070952343) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070953379) (:by |root) (:text |:padding)
                                                              |j $ %{} :Leaf (:at 1524070959440) (:by |root) (:text "|\"0 8px")
                                                          |r $ %{} :Expr (:at 1524070965836) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070967712) (:by |root) (:text |:border)
                                                              |j $ %{} :Expr (:at 1524070968157) (:by |root)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1524070968711) (:by |root) (:text |str)
                                                                  |j $ %{} :Leaf (:at 1524070971580) (:by |root) (:text "|\"1px solid ")
                                                                  |r $ %{} :Expr (:at 1524070972774) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1524070973331) (:by |root) (:text |hsl)
                                                                      |j $ %{} :Leaf (:at 1524070973606) (:by |root) (:text |0)
                                                                      |r $ %{} :Leaf (:at 1524070973793) (:by |root) (:text |0)
                                                                      |v $ %{} :Leaf (:at 1524071006553) (:by |root) (:text |80)
                                                          |v $ %{} :Expr (:at 1524070980253) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070984655) (:by |root) (:text |:border-radius)
                                                              |j $ %{} :Leaf (:at 1524070992141) (:by |root) (:text "|\"16px")
                                                          |x $ %{} :Expr (:at 1524070994599) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1524070996433) (:by |root) (:text |:margin)
                                                              |j $ %{} :Leaf (:at 1524071016063) (:by |root) (:text "|\"0 4px")
                                              |j $ %{} :Expr (:at 1524070937486) (:by |root)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1524070939626) (:by |root) (:text |<>)
                                                  |T $ %{} :Leaf (:at 1524070866665) (:by |root) (:text |username)
                  |v $ %{} :Expr (:at 1500541010211) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                      |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                      |v $ %{} :Leaf (:at 1524070799028) (:by |root) (:text |48)
                  |x $ %{} :Expr (:at 1524070749088) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1524070749878) (:by |root) (:text |div)
                      |L $ %{} :Expr (:at 1524070750119) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070750478) (:by |root) (:text |{})
                      |P $ %{} :Expr (:at 1536750075330) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750077847) (:by |B1y7Rc-Zz) (:text |button)
                          |j $ %{} :Expr (:at 1536750078116) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750084550) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1536750084800) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536750086408) (:by |B1y7Rc-Zz) (:text |:style)
                                  |j $ %{} :Expr (:at 1536750086649) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536750087218) (:by |B1y7Rc-Zz) (:text |merge)
                                      |j $ %{} :Leaf (:at 1553495252158) (:by |B1y7Rc-Zz) (:text |style/button)
                              |r $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1536750146336) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536750146336) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1536750196752) (:by |B1y7Rc-Zz) (:text |d!)
                                          |r $ %{} :Leaf (:at 1536750199956) (:by |B1y7Rc-Zz) (:text |m!)
                                      |r $ %{} :Expr (:at 1536750149343) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1536750153908) (:by |B1y7Rc-Zz) (:text |.replace)
                                          |j $ %{} :Leaf (:at 1536750156692) (:by |B1y7Rc-Zz) (:text |js/location)
                                          |r $ %{} :Expr (:at 1536750157447) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1536750157996) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1536947568308) (:by |root) (:text |js/location.origin)
                                              |r $ %{} :Leaf (:at 1536947560142) (:by |root) (:text "|\"?time=")
                                              |v $ %{} :Expr (:at 1536750183293) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1536750183917) (:by |B1y7Rc-Zz) (:text |.now)
                                                  |j $ %{} :Leaf (:at 1536750185350) (:by |B1y7Rc-Zz) (:text |js/Date)
                          |r $ %{} :Expr (:at 1536750090761) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1536750091205) (:by |B1y7Rc-Zz) (:text |<>)
                              |j $ %{} :Leaf (:at 1536750096637) (:by |B1y7Rc-Zz) (:text "|\"Refresh")
                      |R $ %{} :Expr (:at 1536750643074) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1536750643562) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1536750644286) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Leaf (:at 1536750644793) (:by |B1y7Rc-Zz) (:text |nil)
                      |T $ %{} :Expr (:at 1500541010211) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529343433304) (:by |root) (:text |button)
                          |j $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:style)
                                  |b $ %{} :Expr (:at 1529343525553) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1529343526544) (:by |root) (:text |merge)
                                      |T $ %{} :Leaf (:at 1553495254392) (:by |B1y7Rc-Zz) (:text |style/button)
                                      |j $ %{} :Expr (:at 1529343455186) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1529343455629) (:by |root) (:text |{})
                                          |j $ %{} :Expr (:at 1529343457115) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529343457898) (:by |root) (:text |:color)
                                              |j $ %{} :Leaf (:at 1529343458855) (:by |root) (:text |:red)
                                          |r $ %{} :Expr (:at 1529343459158) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1529343463728) (:by |root) (:text |:border-color)
                                              |j $ %{} :Leaf (:at 1529343464475) (:by |root) (:text |:red)
                              |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1514302350497) (:by |root) (:text |:on-click)
                                  |j $ %{} :Expr (:at 1500541010211) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1521951456454) (:by |root) (:text |fn)
                                      |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |e)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                          |r $ %{} :Leaf (:at 1521951461103) (:by |root) (:text |mutate!)
                                      |v $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |dispatch!)
                                          |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:user/log-out)
                                          |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |nil)
                                      |x $ %{} :Expr (:at 1500541010211) (:by nil)
                                        :data $ {}
                                          |j $ %{} :Leaf (:at 1696745677843) (:by |B1y7Rc-Zz) (:text |js/localStorage.removeItem)
                                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:storage-key)
                                              |j $ %{} :Leaf (:at 1527788933957) (:by |root) (:text |config/site)
                          |r $ %{} :Expr (:at 1500541010211) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                              |r $ %{} :Leaf (:at 1536750140051) (:by |B1y7Rc-Zz) (:text "|\"Log out")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541010211) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.comp.profile)
            |v $ %{} :Expr (:at 1500541010211) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629784971438) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1516547419785) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |ui)
                |y $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1553327487351) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |defcomp)
                        |n $ %{} :Leaf (:at 1524070875244) (:by |root) (:text |list->)
                        |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |span)
                        |x $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |div)
                        |y $ %{} :Leaf (:at 1529343437918) (:by |root) (:text |button)
                |yT $ %{} :Expr (:at 1500541010211) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541010211) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541010211) (:by |root) (:text |=<)
                |yj $ %{} :Expr (:at 1527788936196) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1527788936499) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1527788937835) (:by |root) (:text |app.config)
                    |r $ %{} :Leaf (:at 1527788938747) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1527788939786) (:by |root) (:text |config)
                |yr $ %{} :Expr (:at 1553495259891) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553495260170) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553495261659) (:by |B1y7Rc-Zz) (:text |app.style)
                    |r $ %{} :Leaf (:at 1553495262425) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1553495263090) (:by |B1y7Rc-Zz) (:text |style)
    |app.comp.workflow $ %{} :FileEntry
      :defs $ {}
        |comp-workflow-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099174710) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |comp-workflow-container)
              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflows)
              |v $ %{} :Expr (:at 1539099174710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629788893727) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629788894617) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629788894837) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629788895858) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629788896737) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:focused-id)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:base-workflow)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                                  |x $ %{} :Expr (:at 1629788992487) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788994629) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1629788995637) (:by |B1y7Rc-Zz) (:text |false)
                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |merge)
                                  |b $ %{} :Leaf (:at 1553448001729) (:by |B1y7Rc-Zz) (:text |ui/flex)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/row)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1553449209179) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553449210916) (:by |B1y7Rc-Zz) (:text |:padding)
                                          |j $ %{} :Leaf (:at 1553449211953) (:by |B1y7Rc-Zz) (:text |16)
                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:width)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |200)
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1553398521244) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text ||Workflows)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:font-family)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/font-fancy)
                              |t $ %{} :Expr (:at 1629788962246) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788964397) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |j $ %{} :Leaf (:at 1629788962246) (:by |B1y7Rc-Zz) (:text |:plus)
                                  |r $ %{} :Expr (:at 1629788965472) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629788966421) (:by |B1y7Rc-Zz) (:text |{})
                                      |T $ %{} :Expr (:at 1629788967082) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629788969412) (:by |B1y7Rc-Zz) (:text |:font-size)
                                          |T $ %{} :Leaf (:at 1629788962246) (:by |B1y7Rc-Zz) (:text |16)
                                      |j $ %{} :Expr (:at 1629788970630) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788971480) (:by |B1y7Rc-Zz) (:text |:color)
                                          |j $ %{} :Expr (:at 1629788972913) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788972913) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1629788972913) (:by |B1y7Rc-Zz) (:text |200)
                                              |r $ %{} :Leaf (:at 1629788972913) (:by |B1y7Rc-Zz) (:text |80)
                                              |v $ %{} :Leaf (:at 1629788972913) (:by |B1y7Rc-Zz) (:text |60)
                                      |r $ %{} :Expr (:at 1629788973993) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788976514) (:by |B1y7Rc-Zz) (:text |:cursor)
                                          |j $ %{} :Leaf (:at 1629788977801) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |v $ %{} :Expr (:at 1629788979349) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788979741) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629788980129) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788980366) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629788981368) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789044298) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789044298) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629789044298) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629789044298) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789044298) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629789044298) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629789046715) (:by |B1y7Rc-Zz) (:text |:pop?)
                                              |v $ %{} :Leaf (:at 1684121954755) (:by |B1y7Rc-Zz) (:text |true)
                              |x $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |comp-modal)
                                  |j $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |:title)
                                          |j $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text ||Demo)
                                      |r $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |400)
                                      |v $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |:container-style)
                                          |j $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |{})
                                      |x $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |:render)
                                          |j $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629788958814) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629788958814) (:by |B1y7Rc-Zz) (:text |on-close)
                                              |r $ %{} :Expr (:at 1629789027856) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789027856) (:by |B1y7Rc-Zz) (:text |comp-workflow-editor)
                                                  |j $ %{} :Expr (:at 1629789027856) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789027856) (:by |B1y7Rc-Zz) (:text |>>)
                                                      |j $ %{} :Leaf (:at 1629789027856) (:by |B1y7Rc-Zz) (:text |states)
                                                      |r $ %{} :Leaf (:at 1629789027856) (:by |B1y7Rc-Zz) (:text |:editor)
                                                  |r $ %{} :Leaf (:at 1629789027856) (:by |B1y7Rc-Zz) (:text |nil)
                                                  |v $ %{} :Leaf (:at 1629789030517) (:by |B1y7Rc-Zz) (:text |on-close)
                                  |r $ %{} :Expr (:at 1629789009815) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789014058) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1629789015134) (:by |B1y7Rc-Zz) (:text |state)
                                  |v $ %{} :Expr (:at 1629789019977) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789019977) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629789019977) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789019977) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789019977) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789019977) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629789019977) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629789019977) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789019977) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629789019977) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629789048900) (:by |B1y7Rc-Zz) (:text |:pop?)
                                              |v $ %{} :Leaf (:at 1629789019977) (:by |B1y7Rc-Zz) (:text |false)
                          |t $ %{} :Expr (:at 1553448132683) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553448133328) (:by |B1y7Rc-Zz) (:text |=<)
                              |j $ %{} :Leaf (:at 1553448135351) (:by |B1y7Rc-Zz) (:text |nil)
                              |r $ %{} :Leaf (:at 1553448141440) (:by |B1y7Rc-Zz) (:text |8)
                          |v $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |list->)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629788860130) (:by |B1y7Rc-Zz) (:text |->)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflows)
                                  |l $ %{} :Expr (:at 1629788860905) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788862649) (:by |B1y7Rc-Zz) (:text |.to-list)
                                  |n $ %{} :Expr (:at 1554225151272) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788863943) (:by |B1y7Rc-Zz) (:text |.sort-by)
                                      |j $ %{} :Expr (:at 1554225156525) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1554225156842) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1554225162661) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629788872388) (:by |B1y7Rc-Zz) (:text |pair)
                                          |r $ %{} :Expr (:at 1554225165756) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1554225179009) (:by |root) (:text |:name)
                                              |j $ %{} :Expr (:at 1629788866503) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629788867182) (:by |B1y7Rc-Zz) (:text |last)
                                                  |L $ %{} :Leaf (:at 1629788870287) (:by |B1y7Rc-Zz) (:text |pair)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629788875861) (:by |B1y7Rc-Zz) (:text |.map-pair)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629788877880) (:by |B1y7Rc-Zz) (:text |k)
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflow)
                                          |r $ %{} :Expr (:at 1629788878753) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629788879914) (:by |B1y7Rc-Zz) (:text |[])
                                              |L $ %{} :Leaf (:at 1629788881066) (:by |B1y7Rc-Zz) (:text |k)
                                              |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                                          |j $ %{} :Expr (:at 1553449522996) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |D $ %{} :Leaf (:at 1553449524068) (:by |B1y7Rc-Zz) (:text |merge)
                                                              |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |style-workflow-entry)
                                                              |j $ %{} :Expr (:at 1553449525446) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1553449526618) (:by |B1y7Rc-Zz) (:text |{})
                                                                  |j $ %{} :Expr (:at 1553449527254) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |:background-color)
                                                                      |j $ %{} :Expr (:at 1553449527254) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |if)
                                                                          |j $ %{} :Expr (:at 1553449527254) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |=)
                                                                              |j $ %{} :Expr (:at 1553449527254) (:by |B1y7Rc-Zz)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |:id)
                                                                                  |j $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |workflow)
                                                                              |r $ %{} :Expr (:at 1553449527254) (:by |B1y7Rc-Zz)
                                                                                :data $ {}
                                                                                  |T $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |:focused-id)
                                                                                  |j $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |state)
                                                                          |r $ %{} :Expr (:at 1553449527254) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |hsl)
                                                                              |j $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |0)
                                                                              |r $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |0)
                                                                              |v $ %{} :Leaf (:at 1553449579996) (:by |B1y7Rc-Zz) (:text |100)
                                                                              |x $ %{} :Leaf (:at 1553449630518) (:by |B1y7Rc-Zz) (:text |0.2)
                                                                          |v $ %{} :Expr (:at 1553449527254) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |T $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |hsl)
                                                                              |j $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |0)
                                                                              |r $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |0)
                                                                              |v $ %{} :Leaf (:at 1553449527254) (:by |B1y7Rc-Zz) (:text |100)
                                                                              |x $ %{} :Leaf (:at 1553449605177) (:by |B1y7Rc-Zz) (:text |0)
                                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:on-click)
                                                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629788885888) (:by |B1y7Rc-Zz) (:text |fn)
                                                              |b $ %{} :Expr (:at 1629788886475) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629788886837) (:by |B1y7Rc-Zz) (:text |e)
                                                                  |j $ %{} :Leaf (:at 1629788887500) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |j $ %{} :Expr (:at 1629788889562) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |D $ %{} :Leaf (:at 1629788890351) (:by |B1y7Rc-Zz) (:text |d!)
                                                                  |L $ %{} :Leaf (:at 1629788891493) (:by |B1y7Rc-Zz) (:text |cursor)
                                                                  |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |assoc)
                                                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                                                                      |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:focused-id)
                                                                      |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:id)
                                                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflow)
                                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:name)
                                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflow)
                      |u $ %{} :Expr (:at 1553449247431) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553449247978) (:by |B1y7Rc-Zz) (:text |div)
                          |j $ %{} :Expr (:at 1553449248203) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553449248579) (:by |B1y7Rc-Zz) (:text |{})
                              |j $ %{} :Expr (:at 1553449255248) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1553449256342) (:by |B1y7Rc-Zz) (:text |:style)
                                  |T $ %{} :Expr (:at 1553449253057) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1553449253543) (:by |B1y7Rc-Zz) (:text |{})
                                      |T $ %{} :Expr (:at 1553449248835) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553449250036) (:by |B1y7Rc-Zz) (:text |:width)
                                          |j $ %{} :Leaf (:at 1553449250734) (:by |B1y7Rc-Zz) (:text |1)
                                      |j $ %{} :Expr (:at 1553449257880) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553449270606) (:by |B1y7Rc-Zz) (:text |:background-color)
                                          |j $ %{} :Expr (:at 1553449271158) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553449271158) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1553449271158) (:by |B1y7Rc-Zz) (:text |0)
                                              |r $ %{} :Leaf (:at 1553449271158) (:by |B1y7Rc-Zz) (:text |0)
                                              |v $ %{} :Leaf (:at 1553449271158) (:by |B1y7Rc-Zz) (:text |100)
                                              |x $ %{} :Leaf (:at 1553449271158) (:by |B1y7Rc-Zz) (:text |0.2)
                                      |r $ %{} :Expr (:at 1553449280917) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553449286899) (:by |B1y7Rc-Zz) (:text |:margin)
                                          |j $ %{} :Leaf (:at 1553449296820) (:by |B1y7Rc-Zz) (:text |16)
                      |x $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1553448050179) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1553448051748) (:by |B1y7Rc-Zz) (:text |merge)
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/flex)
                                      |j $ %{} :Expr (:at 1553448052428) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553448052824) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1553449235421) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553449236526) (:by |B1y7Rc-Zz) (:text |:padding)
                                              |j $ %{} :Leaf (:at 1553449237873) (:by |B1y7Rc-Zz) (:text |8)
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |let)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |focused-id)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:focused-id)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |and)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |some?)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |focused-id)
                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |some?)
                                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |get)
                                              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflows)
                                              |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |focused-id)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |let)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflow)
                                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |get)
                                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflows)
                                                  |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |focused-id)
                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |comp-workflow-detail)
                                          |v $ %{} :Expr (:at 1629788904186) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629788904881) (:by |B1y7Rc-Zz) (:text |>>)
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                                              |j $ %{} :Leaf (:at 1629788905538) (:by |B1y7Rc-Zz) (:text |:detail)
                                          |x $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflow)
                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                                          |j $ %{} :Leaf (:at 1553447905346) (:by |B1y7Rc-Zz) (:text "|\"Nothing")
                                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:font-family)
                                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/font-fancy)
                                              |r $ %{} :Expr (:at 1553447907749) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553447913963) (:by |B1y7Rc-Zz) (:text |:color)
                                                  |j $ %{} :Expr (:at 1553447914180) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553447914898) (:by |B1y7Rc-Zz) (:text |hsl)
                                                      |j $ %{} :Leaf (:at 1553447915221) (:by |B1y7Rc-Zz) (:text |0)
                                                      |r $ %{} :Leaf (:at 1553447916034) (:by |B1y7Rc-Zz) (:text |0)
                                                      |v $ %{} :Leaf (:at 1553447938132) (:by |B1y7Rc-Zz) (:text |70)
                                              |v $ %{} :Expr (:at 1553447920731) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553447922939) (:by |B1y7Rc-Zz) (:text |:font-size)
                                                  |j $ %{} :Leaf (:at 1553447924143) (:by |B1y7Rc-Zz) (:text |20)
                                              |x $ %{} :Expr (:at 1553447927945) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553447931168) (:by |B1y7Rc-Zz) (:text |:font-weight)
                                                  |j $ %{} :Leaf (:at 1553447933720) (:by |B1y7Rc-Zz) (:text |100)
        |comp-workflow-detail $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099174710) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |comp-workflow-detail)
              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflow)
              |v $ %{} :Expr (:at 1629789265639) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1629789266400) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1629789267012) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629789267442) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789268458) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629789269344) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789270292) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629789271084) (:by |B1y7Rc-Zz) (:text |states)
                      |j $ %{} :Expr (:at 1629789272032) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629789275244) (:by |B1y7Rc-Zz) (:text |state)
                          |j $ %{} :Expr (:at 1629789275963) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789280970) (:by |B1y7Rc-Zz) (:text |either)
                              |j $ %{} :Expr (:at 1629789282156) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789282833) (:by |B1y7Rc-Zz) (:text |:data)
                                  |j $ %{} :Leaf (:at 1629789283640) (:by |B1y7Rc-Zz) (:text |states)
                              |r $ %{} :Expr (:at 1629789284699) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789285141) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629789285468) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789286707) (:by |B1y7Rc-Zz) (:text |:pop?)
                                      |j $ %{} :Leaf (:at 1629789289866) (:by |B1y7Rc-Zz) (:text |false)
                                  |r $ %{} :Expr (:at 1629789312986) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789314256) (:by |B1y7Rc-Zz) (:text |:edit?)
                                      |j $ %{} :Leaf (:at 1629789315137) (:by |B1y7Rc-Zz) (:text |false)
                      |r $ %{} :Expr (:at 1629790585100) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790589026) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                          |j $ %{} :Expr (:at 1629790589722) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790595983) (:by |B1y7Rc-Zz) (:text |use-confirm)
                              |j $ %{} :Expr (:at 1629790596626) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790597090) (:by |B1y7Rc-Zz) (:text |>>)
                                  |j $ %{} :Leaf (:at 1629790599734) (:by |B1y7Rc-Zz) (:text |states)
                                  |r $ %{} :Leaf (:at 1629790603416) (:by |B1y7Rc-Zz) (:text |:remove)
                              |r $ %{} :Expr (:at 1629790604709) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790605103) (:by |B1y7Rc-Zz) (:text |{})
                  |T $ %{} :Expr (:at 1539099174710) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |merge)
                                      |j $ %{} :Leaf (:at 1553399847271) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                          |r $ %{} :Expr (:at 1553399849436) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1553399850104) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1553399850319) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553399850614) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553399850855) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553399855623) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1553399861261) (:by |B1y7Rc-Zz) (:text |ui/row-middle)
                              |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                                  |f $ %{} :Leaf (:at 1553447383757) (:by |B1y7Rc-Zz) (:text "|\"Commands")
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:font-size)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |24)
                                      |r $ %{} :Expr (:at 1553447384987) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553447390204) (:by |B1y7Rc-Zz) (:text |:font-family)
                                          |j $ %{} :Leaf (:at 1553447405071) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                                      |v $ %{} :Expr (:at 1553447394478) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553447396464) (:by |B1y7Rc-Zz) (:text |:color)
                                          |j $ %{} :Expr (:at 1553447396695) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553447397658) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1553447398439) (:by |B1y7Rc-Zz) (:text |0)
                                              |r $ %{} :Leaf (:at 1553447398692) (:by |B1y7Rc-Zz) (:text |0)
                                              |v $ %{} :Leaf (:at 1553447408848) (:by |B1y7Rc-Zz) (:text |70)
                                      |x $ %{} :Expr (:at 1553447413054) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553447414623) (:by |B1y7Rc-Zz) (:text |:font-weight)
                                          |j $ %{} :Leaf (:at 1553447415671) (:by |B1y7Rc-Zz) (:text |100)
                              |Z $ %{} :Expr (:at 1553447738860) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553447738860) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1553447738860) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1553447738860) (:by |B1y7Rc-Zz) (:text |nil)
                              |f $ %{} :Expr (:at 1553399892163) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |<>)
                                  |j $ %{} :Expr (:at 1553399892163) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |:base-dir)
                                      |j $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |workflow)
                                  |r $ %{} :Expr (:at 1553399892163) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1553399892163) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |:font-family)
                                          |j $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |ui/font-code)
                                      |r $ %{} :Expr (:at 1553399892163) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |:color)
                                          |j $ %{} :Expr (:at 1553399892163) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |hsl)
                                              |j $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |0)
                                              |r $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |0)
                                              |v $ %{} :Leaf (:at 1553399892163) (:by |B1y7Rc-Zz) (:text |70)
                              |i $ %{} :Expr (:at 1553447735787) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553447735787) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1553447735787) (:by |B1y7Rc-Zz) (:text |40)
                                  |r $ %{} :Leaf (:at 1553447735787) (:by |B1y7Rc-Zz) (:text |nil)
                              |iD $ %{} :Expr (:at 1629789097032) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789099485) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |j $ %{} :Leaf (:at 1629789097032) (:by |B1y7Rc-Zz) (:text |:plus)
                                  |r $ %{} :Expr (:at 1629789103232) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629789108335) (:by |B1y7Rc-Zz) (:text |&{})
                                      |L $ %{} :Leaf (:at 1629789114158) (:by |B1y7Rc-Zz) (:text |:font-size)
                                      |T $ %{} :Leaf (:at 1629789102699) (:by |B1y7Rc-Zz) (:text |16)
                                      |j $ %{} :Leaf (:at 1629789115447) (:by |B1y7Rc-Zz) (:text |:color)
                                      |r $ %{} :Expr (:at 1629789116203) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789116203) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1629789116203) (:by |B1y7Rc-Zz) (:text |200)
                                          |r $ %{} :Leaf (:at 1629789116203) (:by |B1y7Rc-Zz) (:text |80)
                                          |v $ %{} :Leaf (:at 1629789116203) (:by |B1y7Rc-Zz) (:text |60)
                                      |v $ %{} :Leaf (:at 1629789123374) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |x $ %{} :Leaf (:at 1629789127716) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |v $ %{} :Expr (:at 1629789128628) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789129007) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629789133325) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789134862) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629789135633) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789138229) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789139373) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629789141302) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629789141611) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789142566) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629789144952) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629789146014) (:by |B1y7Rc-Zz) (:text |:pop?)
                                              |v $ %{} :Leaf (:at 1629789146936) (:by |B1y7Rc-Zz) (:text |true)
                              |iT $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |let)
                                  |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |on-close)
                                          |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |d!)
                                              |r $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |r $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |assoc)
                                                      |j $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |state)
                                                      |r $ %{} :Leaf (:at 1629789148864) (:by |B1y7Rc-Zz) (:text |:pop?)
                                                      |v $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |false)
                                  |r $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |comp-modal)
                                      |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |:title)
                                              |j $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text ||Demo)
                                          |r $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |:style)
                                              |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |:width)
                                                      |j $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |400)
                                          |v $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |:container-style)
                                              |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |{})
                                          |x $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |:render)
                                              |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |fn)
                                                  |j $ %{} :Expr (:at 1629789091097) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |on-close)
                                                  |r $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |comp-command-editor)
                                                      |j $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |>>)
                                                          |j $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |states)
                                                          |r $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |:add-command)
                                                      |r $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |nil)
                                                      |v $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |fn)
                                                          |j $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |command-draft)
                                                              |j $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |r $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |m!)
                                                          |r $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |d!)
                                                              |j $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |:workflow/add-command)
                                                              |r $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |{})
                                                                  |j $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |:workflow-id)
                                                                      |j $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |:id)
                                                                          |j $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |workflow)
                                                                  |r $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |:draft)
                                                                      |j $ %{} :Leaf (:at 1629789162697) (:by |B1y7Rc-Zz) (:text |command-draft)
                                                          |v $ %{} :Expr (:at 1629789162697) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1629789167925) (:by |B1y7Rc-Zz) (:text |on-close)
                                      |r $ %{} :Expr (:at 1629789301350) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789301650) (:by |B1y7Rc-Zz) (:text |:pop?)
                                          |j $ %{} :Leaf (:at 1629789302709) (:by |B1y7Rc-Zz) (:text |state)
                                      |v $ %{} :Leaf (:at 1629789091097) (:by |B1y7Rc-Zz) (:text |on-close)
                          |y $ %{} :Expr (:at 1553399896469) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1553399897816) (:by |B1y7Rc-Zz) (:text |div)
                              |L $ %{} :Expr (:at 1553399898069) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553399898435) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553399898650) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553399899403) (:by |B1y7Rc-Zz) (:text |:style)
                                      |j $ %{} :Leaf (:at 1553399902635) (:by |B1y7Rc-Zz) (:text |ui/row-parted)
                              |N $ %{} :Expr (:at 1629789354242) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789356997) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |j $ %{} :Leaf (:at 1629789354242) (:by |B1y7Rc-Zz) (:text |:edit-2)
                                  |r $ %{} :Expr (:at 1629789357898) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629789364132) (:by |B1y7Rc-Zz) (:text |&{})
                                      |L $ %{} :Leaf (:at 1629789367249) (:by |B1y7Rc-Zz) (:text |:font-size)
                                      |T $ %{} :Leaf (:at 1629789354242) (:by |B1y7Rc-Zz) (:text |14)
                                      |j $ %{} :Leaf (:at 1629789370900) (:by |B1y7Rc-Zz) (:text |:color)
                                      |r $ %{} :Expr (:at 1629789372891) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789372891) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1629789372891) (:by |B1y7Rc-Zz) (:text |200)
                                          |r $ %{} :Leaf (:at 1629789372891) (:by |B1y7Rc-Zz) (:text |80)
                                          |v $ %{} :Leaf (:at 1629789372891) (:by |B1y7Rc-Zz) (:text |60)
                                      |v $ %{} :Leaf (:at 1629789376832) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |x $ %{} :Leaf (:at 1629789377903) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |v $ %{} :Expr (:at 1629789381970) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789382214) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629789382502) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789382689) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629789383183) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789387306) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789387306) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629789387306) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629789387306) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789387306) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629789387306) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629789387306) (:by |B1y7Rc-Zz) (:text |:edit?)
                                              |v $ %{} :Leaf (:at 1629789392086) (:by |B1y7Rc-Zz) (:text |true)
                              |P $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |comp-modal)
                                  |j $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |:title)
                                          |j $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text ||Demo)
                                      |r $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |:style)
                                          |j $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |400)
                                      |v $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |:container-style)
                                          |j $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |{})
                                      |x $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |:render)
                                          |j $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629789322866) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789322866) (:by |B1y7Rc-Zz) (:text |on-close)
                                              |r $ %{} :Expr (:at 1629789397473) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629789397473) (:by |B1y7Rc-Zz) (:text |comp-workflow-editor)
                                                  |j $ %{} :Expr (:at 1629789397473) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629789397473) (:by |B1y7Rc-Zz) (:text |>>)
                                                      |j $ %{} :Leaf (:at 1629789397473) (:by |B1y7Rc-Zz) (:text |states)
                                                      |r $ %{} :Leaf (:at 1629789397473) (:by |B1y7Rc-Zz) (:text |:editor)
                                                  |r $ %{} :Leaf (:at 1629789397473) (:by |B1y7Rc-Zz) (:text |workflow)
                                                  |v $ %{} :Leaf (:at 1629789399903) (:by |B1y7Rc-Zz) (:text |on-close)
                                  |r $ %{} :Expr (:at 1629789330135) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789333811) (:by |B1y7Rc-Zz) (:text |:edit?)
                                      |j $ %{} :Leaf (:at 1629789335443) (:by |B1y7Rc-Zz) (:text |state)
                                  |v $ %{} :Expr (:at 1629789328392) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629789328392) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629789328392) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789328392) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629789328392) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629789328392) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Leaf (:at 1629789328392) (:by |B1y7Rc-Zz) (:text |cursor)
                                          |r $ %{} :Expr (:at 1629789328392) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629789328392) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629789328392) (:by |B1y7Rc-Zz) (:text |state)
                                              |r $ %{} :Leaf (:at 1629789348259) (:by |B1y7Rc-Zz) (:text |:edit?)
                                              |v $ %{} :Leaf (:at 1629789328392) (:by |B1y7Rc-Zz) (:text |false)
                              |f $ %{} :Expr (:at 1553400980665) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553400980665) (:by |B1y7Rc-Zz) (:text |=<)
                                  |j $ %{} :Leaf (:at 1553400980665) (:by |B1y7Rc-Zz) (:text |8)
                                  |r $ %{} :Leaf (:at 1553400980665) (:by |B1y7Rc-Zz) (:text |nil)
                              |l $ %{} :Expr (:at 1629790617598) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629790623171) (:by |B1y7Rc-Zz) (:text |comp-icon)
                                  |j $ %{} :Leaf (:at 1629790617598) (:by |B1y7Rc-Zz) (:text |:x)
                                  |r $ %{} :Expr (:at 1629790625788) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1629790627372) (:by |B1y7Rc-Zz) (:text |&{})
                                      |L $ %{} :Leaf (:at 1629790631328) (:by |B1y7Rc-Zz) (:text |:font-size)
                                      |T $ %{} :Leaf (:at 1629790617598) (:by |B1y7Rc-Zz) (:text |18)
                                      |j $ %{} :Leaf (:at 1629790634018) (:by |B1y7Rc-Zz) (:text |:color)
                                      |r $ %{} :Expr (:at 1629790635747) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790635747) (:by |B1y7Rc-Zz) (:text |hsl)
                                          |j $ %{} :Leaf (:at 1629790635747) (:by |B1y7Rc-Zz) (:text |0)
                                          |r $ %{} :Leaf (:at 1629790635747) (:by |B1y7Rc-Zz) (:text |80)
                                          |v $ %{} :Leaf (:at 1629790635747) (:by |B1y7Rc-Zz) (:text |60)
                                      |v $ %{} :Leaf (:at 1629790637926) (:by |B1y7Rc-Zz) (:text |:cursor)
                                      |x $ %{} :Leaf (:at 1629790641874) (:by |B1y7Rc-Zz) (:text |:pointer)
                                  |v $ %{} :Expr (:at 1629790643813) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629790645202) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629790645524) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790645709) (:by |B1y7Rc-Zz) (:text |e)
                                          |j $ %{} :Leaf (:at 1629790646341) (:by |B1y7Rc-Zz) (:text |d!)
                                      |r $ %{} :Expr (:at 1629790646779) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790650526) (:by |B1y7Rc-Zz) (:text |.show)
                                          |j $ %{} :Leaf (:at 1629790652116) (:by |B1y7Rc-Zz) (:text |remove-plugin)
                                          |r $ %{} :Leaf (:at 1629790654322) (:by |B1y7Rc-Zz) (:text |d!)
                                          |v $ %{} :Expr (:at 1629790654758) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629790655008) (:by |B1y7Rc-Zz) (:text |fn)
                                              |j $ %{} :Expr (:at 1629790655463) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                              |r $ %{} :Expr (:at 1629790662376) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629790662376) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |j $ %{} :Leaf (:at 1629790662376) (:by |B1y7Rc-Zz) (:text |:workflow/remove)
                                                  |r $ %{} :Expr (:at 1629790662376) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629790662376) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1629790662376) (:by |B1y7Rc-Zz) (:text |workflow)
                      |v $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |list->)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629789237531) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:commands)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |workflow)
                              |n $ %{} :Expr (:at 1684127084235) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1684127086058) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1684126847579) (:by |B1y7Rc-Zz) (:text |map)
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |fn)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1684126865234) (:by |B1y7Rc-Zz) (:text |entry)
                                      |r $ %{} :Expr (:at 1684126851765) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1684126871302) (:by |B1y7Rc-Zz) (:text |let-sugar)
                                          |L $ %{} :Expr (:at 1684126880475) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Expr (:at 1684126852562) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1684126879406) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1684126854318) (:by |B1y7Rc-Zz) (:text |[])
                                                      |b $ %{} :Leaf (:at 1684126856168) (:by |B1y7Rc-Zz) (:text |k)
                                                      |h $ %{} :Leaf (:at 1684126862552) (:by |B1y7Rc-Zz) (:text |command)
                                                  |b $ %{} :Leaf (:at 1684126867036) (:by |B1y7Rc-Zz) (:text |entry)
                                          |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |k)
                                              |r $ %{} :Expr (:at 1553365719142) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553365712832) (:by |B1y7Rc-Zz) (:text |comp-command-row)
                                                  |b $ %{} :Expr (:at 1629789249746) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1629789250469) (:by |B1y7Rc-Zz) (:text |>>)
                                                      |T $ %{} :Leaf (:at 1553365732676) (:by |B1y7Rc-Zz) (:text |states)
                                                      |j $ %{} :Leaf (:at 1629789251144) (:by |B1y7Rc-Zz) (:text |k)
                                                  |j $ %{} :Leaf (:at 1553365720336) (:by |B1y7Rc-Zz) (:text |command)
                                                  |r $ %{} :Expr (:at 1553365751972) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553365752689) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1553365754660) (:by |B1y7Rc-Zz) (:text |workflow)
                      |x $ %{} :Expr (:at 1629790609153) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790610420) (:by |B1y7Rc-Zz) (:text |.render)
                          |j $ %{} :Leaf (:at 1629790610805) (:by |B1y7Rc-Zz) (:text |remove-plugin)
        |comp-workflow-editor $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553364986302) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |defcomp)
              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |comp-workflow-editor)
              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                  |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-workflow)
                  |v $ %{} :Leaf (:at 1553364944691) (:by |B1y7Rc-Zz) (:text |on-toggle)
              |v $ %{} :Expr (:at 1539099174710) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                    :data $ {}
                      |D $ %{} :Expr (:at 1629790403530) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629790405839) (:by |B1y7Rc-Zz) (:text |cursor)
                          |j $ %{} :Expr (:at 1629790406182) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629790409238) (:by |B1y7Rc-Zz) (:text |:cursor)
                              |j $ %{} :Leaf (:at 1629790410084) (:by |B1y7Rc-Zz) (:text |states)
                      |T $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |or)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |states)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |if)
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |some?)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-workflow)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |select-keys)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-workflow)
                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:name)
                                          |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:base-dir)
                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:name)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text ||)
                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:base-dir)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text ||./)
                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |b $ %{} :Expr (:at 1684122013029) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1684122014089) (:by |B1y7Rc-Zz) (:text |:style)
                              |T $ %{} :Expr (:at 1684122038494) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1684122039268) (:by |B1y7Rc-Zz) (:text |merge)
                                  |L $ %{} :Leaf (:at 1684122041886) (:by |B1y7Rc-Zz) (:text |ui/column)
                                  |T $ %{} :Expr (:at 1684122014487) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1684122015108) (:by |B1y7Rc-Zz) (:text |{})
                                      |T $ %{} :Expr (:at 1684122005909) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1684122007009) (:by |B1y7Rc-Zz) (:text |:padding)
                                          |b $ %{} :Leaf (:at 1684122026674) (:by |B1y7Rc-Zz) (:text "|\"8px")
                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                              |j $ %{} :Leaf (:at 1553448089860) (:by |B1y7Rc-Zz) (:text "|\"Workflow")
                              |r $ %{} :Expr (:at 1553448076388) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553448076741) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553448077003) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553448095262) (:by |B1y7Rc-Zz) (:text |:font-family)
                                      |j $ %{} :Leaf (:at 1553448101413) (:by |B1y7Rc-Zz) (:text |ui/font-fancy)
                      |t $ %{} :Expr (:at 1553448080848) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553448081372) (:by |B1y7Rc-Zz) (:text |=<)
                          |j $ %{} :Leaf (:at 1553448083511) (:by |B1y7Rc-Zz) (:text |nil)
                          |r $ %{} :Leaf (:at 1553448084599) (:by |B1y7Rc-Zz) (:text |6)
                      |v $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |merge)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/input)
                                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |240)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:placeholder)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text "||Workflow name")
                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:value)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:name)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                                  |x $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1629790367614) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1629790368540) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1629790368970) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629790369378) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1629790370007) (:by |B1y7Rc-Zz) (:text |d!)
                                          |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629790365670) (:by |B1y7Rc-Zz) (:text |d!)
                                              |b $ %{} :Leaf (:at 1629790366898) (:by |B1y7Rc-Zz) (:text |cursor)
                                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                                                  |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:name)
                                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1629790371514) (:by |B1y7Rc-Zz) (:text |e)
                      |x $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1553448087946) (:by |B1y7Rc-Zz) (:text |8)
                      |y $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |input)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |merge)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/input)
                                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:width)
                                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |240)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:placeholder)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text "||Base directory")
                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:value)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:base-dir)
                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                                  |x $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:on-input)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629790373466) (:by |B1y7Rc-Zz) (:text |fn)
                                          |b $ %{} :Expr (:at 1629790373939) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629790374289) (:by |B1y7Rc-Zz) (:text |e)
                                              |j $ %{} :Leaf (:at 1629790374886) (:by |B1y7Rc-Zz) (:text |d!)
                                          |j $ %{} :Expr (:at 1629790376145) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629790377122) (:by |B1y7Rc-Zz) (:text |d!)
                                              |L $ %{} :Leaf (:at 1629790378758) (:by |B1y7Rc-Zz) (:text |cursor)
                                              |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |assoc)
                                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                                                  |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:base-dir)
                                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:value)
                                                      |j $ %{} :Leaf (:at 1629790381273) (:by |B1y7Rc-Zz) (:text |e)
                      |yT $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |=<)
                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                          |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |16)
                      |yj $ %{} :Expr (:at 1539099174710) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui/row-parted)
                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |span)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                          |v $ %{} :Expr (:at 1539099174710) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |button)
                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:style)
                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |style/button)
                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:on-click)
                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |fn)
                                          |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |e)
                                              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |d!)
                                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |let)
                                              |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |data)
                                                      |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |select-keys)
                                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |state)
                                                          |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                                                              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:name)
                                                              |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:base-dir)
                                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |if)
                                                  |j $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |some?)
                                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-workflow)
                                                  |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:workflow/edit)
                                                      |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |assoc)
                                                          |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |data)
                                                          |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:id)
                                                          |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:id)
                                                              |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |base-workflow)
                                                  |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |d!)
                                                      |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:workflow/create)
                                                      |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |data)
                                              |v $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629790560910) (:by |B1y7Rc-Zz) (:text |d!)
                                                  |b $ %{} :Leaf (:at 1629790562267) (:by |B1y7Rc-Zz) (:text |cursor)
                                                  |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |nil)
                                              |x $ %{} :Expr (:at 1539099174710) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553364993705) (:by |B1y7Rc-Zz) (:text |on-toggle)
                                                  |b $ %{} :Leaf (:at 1684122180738) (:by |B1y7Rc-Zz) (:text |d!)
                              |r $ %{} :Expr (:at 1539099174710) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                                  |j $ %{} :Leaf (:at 1553365272316) (:by |B1y7Rc-Zz) (:text "|\"Submit")
        |style-workflow-entry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |style-workflow-entry)
              |r $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |{})
                  |j $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |:pointer)
                  |r $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |:padding)
                      |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text "||0 8px")
                  |v $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |:min-width)
                      |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |40)
                  |x $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |:min-height)
                      |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |20)
                  |y $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |:border-bottom)
                      |j $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |str)
                          |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text "||1px solid ")
                          |r $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |hsl)
                              |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |0)
                              |r $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |0)
                              |v $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |94)
                              |x $ %{} :Leaf (:at 1553449623868) (:by |B1y7Rc-Zz) (:text |0.1)
                  |yT $ %{} :Expr (:at 1553449534025) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1553449534025) (:by |B1y7Rc-Zz) (:text "|\"36px")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099174710) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |app.comp.workflow)
            |r $ %{} :Expr (:at 1539099174710) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099174710) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629789055088) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099174710) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1539099174710) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |ui)
                |x $ %{} :Expr (:at 1539099174710) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1553327496277) (:by |B1y7Rc-Zz) (:text |respo.core)
                    |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099174710) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |defcomp)
                        |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |<>)
                        |v $ %{} :Leaf (:at 1629788842394) (:by |B1y7Rc-Zz) (:text |>>)
                        |yT $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |list->)
                        |yj $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |span)
                        |yr $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |div)
                        |yv $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |input)
                        |yx $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |button)
                        |yy $ %{} :Leaf (:at 1553365472922) (:by |B1y7Rc-Zz) (:text |a)
                |y $ %{} :Expr (:at 1539099174710) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |respo.comp.space)
                    |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099174710) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |=<)
                |yT $ %{} :Expr (:at 1539099174710) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |clojure.string)
                    |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |string)
                |yj $ %{} :Expr (:at 1539099174710) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |app.style)
                    |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |style)
                |yv $ %{} :Expr (:at 1539099174710) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099174710) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539099174710) (:by |root) (:text |map-val)
                |yx $ %{} :Expr (:at 1553364574907) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553364575301) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553364576451) (:by |B1y7Rc-Zz) (:text |inflow-popup.comp.popup)
                    |v $ %{} :Leaf (:at 1553364582976) (:by |B1y7Rc-Zz) (:text |:refer)
                    |x $ %{} :Expr (:at 1553364578530) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553364578404) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553364588386) (:by |B1y7Rc-Zz) (:text |comp-popup)
                |yy $ %{} :Expr (:at 1553399688947) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553399688947) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553399688947) (:by |B1y7Rc-Zz) (:text |feather.core)
                    |r $ %{} :Leaf (:at 1553399688947) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553399688947) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553399688947) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553399688947) (:by |B1y7Rc-Zz) (:text |comp-i)
                        |r $ %{} :Leaf (:at 1629789411936) (:by |B1y7Rc-Zz) (:text |comp-icon)
                |yyT $ %{} :Expr (:at 1553400099065) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553400099393) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553400102301) (:by |B1y7Rc-Zz) (:text |app.comp.command)
                    |r $ %{} :Leaf (:at 1553400103140) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553400103271) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553400104170) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553400108509) (:by |B1y7Rc-Zz) (:text |comp-command-editor)
                        |r $ %{} :Leaf (:at 1553400112346) (:by |B1y7Rc-Zz) (:text |comp-command-row)
                |yyj $ %{} :Expr (:at 1553400939143) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553400939143) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1629788924091) (:by |B1y7Rc-Zz) (:text |respo-alerts.core)
                    |r $ %{} :Leaf (:at 1553400939143) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553400939143) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553400939143) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1629788941574) (:by |B1y7Rc-Zz) (:text |use-confirm)
                        |r $ %{} :Leaf (:at 1629788939290) (:by |B1y7Rc-Zz) (:text |comp-modal)
    |app.config $ %{} :FileEntry
      :defs $ {}
        |cdn? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |cdn?)
              |r $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |cond)
                  |j $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |exists?)
                          |j $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |js/window)
                      |j $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |false)
                  |r $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |exists?)
                          |j $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |js/process)
                      |j $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |=)
                          |j $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text "|\"true")
                          |r $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |js/process.env.cdn)
                  |v $ %{} :Expr (:at 1553327522753) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |:else)
                      |j $ %{} :Leaf (:at 1553327522753) (:by |B1y7Rc-Zz) (:text |false)
        |dev? $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553327530153) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553327530153) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1553327530153) (:by |B1y7Rc-Zz) (:text |dev?)
              |r $ %{} :Expr (:at 1629790044335) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629790044422) (:by |B1y7Rc-Zz) (:text |=)
                  |j $ %{} :Leaf (:at 1629790051944) (:by |B1y7Rc-Zz) (:text "|\"dev")
                  |r $ %{} :Expr (:at 1629790046280) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629790048821) (:by |B1y7Rc-Zz) (:text |get-env)
                      |j $ %{} :Leaf (:at 1629790050348) (:by |B1y7Rc-Zz) (:text "|\"mode")
        |site $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |site)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:port)
                      |j $ %{} :Leaf (:at 1539100073858) (:by |root) (:text |11014)
                  |t $ %{} :Expr (:at 1527867502467) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867504737) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1539100077443) (:by |root) (:text "|\"Termina")
                  |u $ %{} :Expr (:at 1527867511986) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527867512819) (:by |root) (:text |:icon)
                      |j $ %{} :Leaf (:at 1539100146481) (:by |root) (:text "|\"http://cdn.tiye.me/logo/termina.png")
                  |v $ %{} :Expr (:at 1527615278481) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527615280984) (:by |root) (:text |:dev-ui)
                      |j $ %{} :Leaf (:at 1527615358738) (:by |root) (:text "|\"http://localhost:8100/main.css")
                  |x $ %{} :Expr (:at 1527615281625) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527615283846) (:by |root) (:text |:release-ui)
                      |j $ %{} :Leaf (:at 1527615339502) (:by |root) (:text "|\"http://cdn.tiye.me/favored-fonts/main.css")
                  |x5 $ %{} :Expr (:at 1528009883995) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528009886059) (:by |root) (:text |:cdn-url)
                      |j $ %{} :Leaf (:at 1539100151704) (:by |root) (:text "|\"http://cdn.tiye.me/termina/")
                  |xD $ %{} :Expr (:at 1528009877862) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528009882805) (:by |root) (:text |:cdn-folder)
                      |j $ %{} :Leaf (:at 1539100156539) (:by |root) (:text "|\"tiye.me:cdn/termina")
                  |yT $ %{} :Expr (:at 1527866712917) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528009970172) (:by |root) (:text |:upload-folder)
                      |j $ %{} :Leaf (:at 1539100163352) (:by |root) (:text "|\"tiye.me:repo/mvc-works/termina/")
                  |yj $ %{} :Expr (:at 1527866893140) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1528010247576) (:by |root) (:text |:server-folder)
                      |j $ %{} :Leaf (:at 1539100166623) (:by |root) (:text "|\"tiye.me:servers/termina")
                  |yr $ %{} :Expr (:at 1535565550489) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1535565552318) (:by |B1y7Rc-Zz) (:text |:theme)
                      |j $ %{} :Leaf (:at 1535565554474) (:by |B1y7Rc-Zz) (:text "|\"#eeeeff")
                  |yv $ %{} :Expr (:at 1553327545521) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327545521) (:by |B1y7Rc-Zz) (:text |:storage-key)
                      |j $ %{} :Leaf (:at 1553327545521) (:by |B1y7Rc-Zz) (:text "|\"termina")
                  |yx $ %{} :Expr (:at 1553327556145) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327556145) (:by |B1y7Rc-Zz) (:text |:storage-file)
                      |j $ %{} :Leaf (:at 1629796384471) (:by |B1y7Rc-Zz) (:text "|\"termina.cirru")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1527788708227) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1527788708227) (:by |root) (:text |app.config)
    |app.manager $ %{} :FileEntry
      :defs $ {}
        |*registry $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099457012) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794726232) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |*registry)
              |r $ %{} :Expr (:at 1539099457012) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |{})
        |create-process! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099457012) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |create-process!)
              |r $ %{} :Expr (:at 1539099457012) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |op-data)
                  |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                  |r $ %{} :Leaf (:at 1629797861374) (:by |B1y7Rc-Zz) (:text |sid)
              |v $ %{} :Expr (:at 1539099457012) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |command)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:command)
                              |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |op-data)
                      |j $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |cwd)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:cwd)
                              |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |op-data)
                      |n $ %{} :Expr (:at 1697705825836) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697705827778) (:by |B1y7Rc-Zz) (:text |jump?)
                          |b $ %{} :Expr (:at 1697705829754) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1697705831936) (:by |B1y7Rc-Zz) (:text |:jump?)
                              |b $ %{} :Leaf (:at 1697705829754) (:by |B1y7Rc-Zz) (:text |op-data)
                      |r $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |proc)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794681058) (:by |B1y7Rc-Zz) (:text |cp/exec)
                              |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |command)
                              |v $ %{} :Expr (:at 1539099457012) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794688958) (:by |B1y7Rc-Zz) (:text |js-object)
                                  |j $ %{} :Expr (:at 1539099457012) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:cwd)
                                      |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |cwd)
                      |v $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |pid)
                          |j $ %{} :Expr (:at 1629794706063) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1629794707212) (:by |B1y7Rc-Zz) (:text |.-pid)
                              |T $ %{} :Leaf (:at 1629794705587) (:by |B1y7Rc-Zz) (:text |proc)
                  |r $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |swap!)
                      |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |*registry)
                      |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |assoc)
                      |v $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |pid)
                      |x $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |proc)
                  |v $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                      |j $ %{} :Expr (:at 1689561985657) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1689561986277) (:by |B1y7Rc-Zz) (:text |::)
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:process/create)
                          |b $ %{} :Expr (:at 1689561987181) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |{})
                              |b $ %{} :Expr (:at 1689561987181) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |:pid)
                                  |b $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |pid)
                              |h $ %{} :Expr (:at 1689561987181) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |:command)
                                  |b $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |command)
                              |l $ %{} :Expr (:at 1689561987181) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |:cwd)
                                  |b $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |cwd)
                              |o $ %{} :Expr (:at 1689561987181) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |:title)
                                  |b $ %{} :Expr (:at 1689561987181) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |:title)
                                      |b $ %{} :Leaf (:at 1689561987181) (:by |B1y7Rc-Zz) (:text |op-data)
                      |v $ %{} :Leaf (:at 1629797897860) (:by |B1y7Rc-Zz) (:text |sid)
                  |w $ %{} :Expr (:at 1697705820521) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1697705820990) (:by |B1y7Rc-Zz) (:text |if)
                      |L $ %{} :Leaf (:at 1697705822793) (:by |B1y7Rc-Zz) (:text |jump?)
                      |T $ %{} :Expr (:at 1697705812600) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697705885102) (:by |B1y7Rc-Zz) (:text |dispatch!)
                          |h $ %{} :Expr (:at 1697705964785) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1697705965314) (:by |B1y7Rc-Zz) (:text |::)
                              |L $ %{} :Leaf (:at 1697705965664) (:by |B1y7Rc-Zz) (:text |:router/change)
                              |T $ %{} :Expr (:at 1697705812600) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1697705812600) (:by |B1y7Rc-Zz) (:text |{})
                                  |b $ %{} :Expr (:at 1697705812600) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1697705812600) (:by |B1y7Rc-Zz) (:text |:name)
                                      |b $ %{} :Leaf (:at 1697705812600) (:by |B1y7Rc-Zz) (:text |:process)
                                  |h $ %{} :Expr (:at 1697705812600) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1697705812600) (:by |B1y7Rc-Zz) (:text |:params)
                                      |b $ %{} :Expr (:at 1697705812600) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1697705812600) (:by |B1y7Rc-Zz) (:text |{})
                                          |b $ %{} :Expr (:at 1697705812600) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1697705812600) (:by |B1y7Rc-Zz) (:text |:id)
                                              |b $ %{} :Leaf (:at 1697705817850) (:by |B1y7Rc-Zz) (:text |pid)
                          |l $ %{} :Leaf (:at 1697706041849) (:by |B1y7Rc-Zz) (:text |sid)
                  |x $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1683802311036) (:by |B1y7Rc-Zz) (:text |.!on)
                      |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |proc)
                      |r $ %{} :Leaf (:at 1553363059343) (:by |B1y7Rc-Zz) (:text "|\"exit")
                      |v $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |event)
                              |j $ %{} :Leaf (:at 1629797944808) (:by |B1y7Rc-Zz) (:text |_)
                          |n $ %{} :Expr (:at 1683802086115) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1683802378951) (:by |B1y7Rc-Zz) (:text |;)
                              |T $ %{} :Leaf (:at 1683802090104) (:by |B1y7Rc-Zz) (:text |js/console.debug)
                              |X $ %{} :Leaf (:at 1683802377949) (:by |B1y7Rc-Zz) (:text "|\"[process killed]")
                              |b $ %{} :Leaf (:at 1683802091440) (:by |B1y7Rc-Zz) (:text |event)
                          |r $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1689561991612) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689561992196) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:process/finish)
                                  |b $ %{} :Leaf (:at 1689561994217) (:by |B1y7Rc-Zz) (:text |pid)
                              |v $ %{} :Leaf (:at 1629797881507) (:by |B1y7Rc-Zz) (:text |sid)
                          |v $ %{} :Expr (:at 1553363061281) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553363061281) (:by |B1y7Rc-Zz) (:text |swap!)
                              |j $ %{} :Leaf (:at 1553363061281) (:by |B1y7Rc-Zz) (:text |*registry)
                              |r $ %{} :Leaf (:at 1553363061281) (:by |B1y7Rc-Zz) (:text |dissoc)
                              |v $ %{} :Leaf (:at 1553363061281) (:by |B1y7Rc-Zz) (:text |pid)
                  |y $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1683802312768) (:by |B1y7Rc-Zz) (:text |.!on)
                      |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |proc)
                      |r $ %{} :Leaf (:at 1553495012821) (:by |B1y7Rc-Zz) (:text "|\"error")
                      |v $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |event)
                          |p $ %{} :Expr (:at 1553495034438) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553495160773) (:by |B1y7Rc-Zz) (:text |js/console.error)
                              |j $ %{} :Leaf (:at 1553495044529) (:by |B1y7Rc-Zz) (:text |event)
                          |r $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1689561999025) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689562000646) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:process/error)
                                  |b $ %{} :Expr (:at 1689562001315) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689562001315) (:by |B1y7Rc-Zz) (:text |[])
                                      |b $ %{} :Leaf (:at 1689562001315) (:by |B1y7Rc-Zz) (:text |pid)
                                      |h $ %{} :Expr (:at 1689562001315) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1689562001315) (:by |B1y7Rc-Zz) (:text |str)
                                          |b $ %{} :Leaf (:at 1689562001315) (:by |B1y7Rc-Zz) (:text |event)
                              |v $ %{} :Leaf (:at 1629797893656) (:by |B1y7Rc-Zz) (:text |sid)
                          |v $ %{} :Expr (:at 1553495142990) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553495142990) (:by |B1y7Rc-Zz) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1689562002671) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689562003290) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1553495142990) (:by |B1y7Rc-Zz) (:text |:process/finish)
                                  |b $ %{} :Leaf (:at 1689562005759) (:by |B1y7Rc-Zz) (:text |pid)
                              |v $ %{} :Leaf (:at 1629797890271) (:by |B1y7Rc-Zz) (:text |sid)
                  |yT $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1683802314373) (:by |B1y7Rc-Zz) (:text |.!on)
                      |j $ %{} :Expr (:at 1629794734043) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1629794735946) (:by |B1y7Rc-Zz) (:text |.-stdout)
                          |T $ %{} :Leaf (:at 1629794733766) (:by |B1y7Rc-Zz) (:text |proc)
                      |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text ||data)
                      |v $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |data)
                          |r $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                              |r $ %{} :Expr (:at 1689562008955) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689562009508) (:by |B1y7Rc-Zz) (:text |::)
                                  |L $ %{} :Leaf (:at 1689562010455) (:by |B1y7Rc-Zz) (:text |:process/stdout)
                                  |T $ %{} :Expr (:at 1539099457012) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |[])
                                      |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |pid)
                                      |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |data)
                              |v $ %{} :Leaf (:at 1629797884219) (:by |B1y7Rc-Zz) (:text |sid)
                  |yj $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1683802316659) (:by |B1y7Rc-Zz) (:text |.!on)
                      |j $ %{} :Expr (:at 1629794737627) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1629794738868) (:by |B1y7Rc-Zz) (:text |.-stderr)
                          |T $ %{} :Leaf (:at 1629794737360) (:by |B1y7Rc-Zz) (:text |proc)
                      |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text ||data)
                      |v $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |data)
                          |r $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                              |j $ %{} :Expr (:at 1689562013330) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1689562014535) (:by |B1y7Rc-Zz) (:text |::)
                                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:process/stderr)
                                  |b $ %{} :Expr (:at 1689562017176) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1689562017176) (:by |B1y7Rc-Zz) (:text |[])
                                      |b $ %{} :Leaf (:at 1689562017176) (:by |B1y7Rc-Zz) (:text |pid)
                                      |h $ %{} :Leaf (:at 1689562017176) (:by |B1y7Rc-Zz) (:text |data)
                              |v $ %{} :Leaf (:at 1629797885986) (:by |B1y7Rc-Zz) (:text |sid)
        |kill-process! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099457012) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |kill-process!)
              |r $ %{} :Expr (:at 1539099457012) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |pid)
                  |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                  |r $ %{} :Leaf (:at 1629797908396) (:by |B1y7Rc-Zz) (:text |sid)
              |v $ %{} :Expr (:at 1539099457012) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |proc)
                          |j $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |get)
                              |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |@*registry)
                              |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |pid)
                  |r $ %{} :Expr (:at 1539099457012) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |if)
                      |j $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |some?)
                          |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |proc)
                      |r $ %{} :Expr (:at 1539099457012) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |do)
                          |j $ %{} :Expr (:at 1683802538890) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1683802538890) (:by |B1y7Rc-Zz) (:text |.!kill)
                              |b $ %{} :Leaf (:at 1683802538890) (:by |B1y7Rc-Zz) (:text |proc)
                              |h $ %{} :Leaf (:at 1683802538890) (:by |B1y7Rc-Zz) (:text "|\"SIGTERM")
                      |v $ %{} :Expr (:at 1683802114612) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1683802115076) (:by |B1y7Rc-Zz) (:text |do)
                          |L $ %{} :Expr (:at 1683802116673) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1683802147153) (:by |B1y7Rc-Zz) (:text |eprintln)
                              |b $ %{} :Leaf (:at 1683802156251) (:by |B1y7Rc-Zz) (:text "|\"[warn] process not found in registry:")
                              |e $ %{} :Leaf (:at 1683802153286) (:by |B1y7Rc-Zz) (:text |pid)
                              |h $ %{} :Leaf (:at 1683802151288) (:by |B1y7Rc-Zz) (:text |@*registry)
                          |T $ %{} :Expr (:at 1539099457012) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |dispatch!)
                              |j $ %{} :Leaf (:at 1553363015580) (:by |B1y7Rc-Zz) (:text |:process/finish)
                              |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |pid)
                              |v $ %{} :Leaf (:at 1629797901900) (:by |B1y7Rc-Zz) (:text |sid)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099457012) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |app.manager)
            |r $ %{} :Expr (:at 1539099457012) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1539099457012) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099457012) (:by |root) (:text ||child_process)
                    |r $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099457012) (:by |root) (:text |cp)
    |app.schema $ %{} :FileEntry
      :defs $ {}
        |command $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099507452) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099507452) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539099507452) (:by |root) (:text |command)
              |r $ %{} :Expr (:at 1539099507452) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099507452) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1539099507452) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099507452) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1539099507452) (:by |root) (:text |nil)
                  |n $ %{} :Expr (:at 1553364119142) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553364121299) (:by |B1y7Rc-Zz) (:text |:title)
                      |j $ %{} :Leaf (:at 1553364121656) (:by |B1y7Rc-Zz) (:text "|\"")
                  |r $ %{} :Expr (:at 1539099507452) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099507452) (:by |root) (:text |:path)
                      |j $ %{} :Leaf (:at 1553364123409) (:by |B1y7Rc-Zz) (:text "|\".")
                  |v $ %{} :Expr (:at 1539099507452) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099507452) (:by |root) (:text |:code)
                      |j $ %{} :Leaf (:at 1553364124773) (:by |B1y7Rc-Zz) (:text "|\"")
        |database $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |database)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |j $ %{} :Expr (:at 1538886498428) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886499001) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886500387) (:by |root) (:text |session)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                      |j $ %{} :Expr (:at 1538886501540) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886502106) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886502625) (:by |root) (:text |user)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |yT $ %{} :Expr (:at 1539099656004) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099656004) (:by |root) (:text |:processes)
                      |j $ %{} :Expr (:at 1539099677131) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1539099677701) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1539099678789) (:by |root) (:text |process)
                          |T $ %{} :Expr (:at 1539099656004) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099656004) (:by |root) (:text |{})
                  |yj $ %{} :Expr (:at 1539099656004) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099656004) (:by |root) (:text |:workflows)
                      |j $ %{} :Expr (:at 1539099673519) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1539099674079) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1539099675929) (:by |root) (:text |workflow)
                          |T $ %{} :Expr (:at 1539099656004) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099656004) (:by |root) (:text |{})
                  |yr $ %{} :Expr (:at 1539099656004) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099656004) (:by |root) (:text |:histories)
                      |j $ %{} :Expr (:at 1539099669639) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1539099670674) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1539099671805) (:by |root) (:text |history)
                          |T $ %{} :Expr (:at 1539099656004) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099656004) (:by |root) (:text |[])
        |history $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099516337) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |history)
              |r $ %{} :Expr (:at 1539099516337) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1539099516337) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1539099516337) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |:pid)
                      |j $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |0)
                  |v $ %{} :Expr (:at 1539099516337) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |:started-at)
                      |j $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |0)
                  |x $ %{} :Expr (:at 1539099516337) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |:cwd)
                      |j $ %{} :Leaf (:at 1539099516337) (:by |root) (:text ||)
                  |y $ %{} :Expr (:at 1539099516337) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099516337) (:by |root) (:text |:command)
                      |j $ %{} :Leaf (:at 1539099516337) (:by |root) (:text ||)
        |page $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1525107082906) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1525107085441) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1525107082906) (:by |root) (:text |page)
              |r $ %{} :Expr (:at 1525107082906) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1525107086712) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1525107087020) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525107088360) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1525107088754) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1525107089227) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525107091552) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1525107095971) (:by |root) (:text "|\"")
                  |v $ %{} :Expr (:at 1525107092520) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1525107093179) (:by |root) (:text |:time)
                      |j $ %{} :Leaf (:at 1525107093921) (:by |root) (:text |nil)
        |process $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099523985) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |process)
              |r $ %{} :Expr (:at 1539099523985) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |{})
                  |b $ %{} :Expr (:at 1553362856953) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553362860705) (:by |B1y7Rc-Zz) (:text |:title)
                      |j $ %{} :Leaf (:at 1553362870491) (:by |B1y7Rc-Zz) (:text "|\"")
                  |j $ %{} :Expr (:at 1539099523985) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |:pid)
                      |j $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |0)
                  |r $ %{} :Expr (:at 1539099523985) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |:content)
                      |j $ %{} :Expr (:at 1539099523985) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |[])
                  |v $ %{} :Expr (:at 1539099523985) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |:started-at)
                      |j $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |0)
                  |x $ %{} :Expr (:at 1539099523985) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |:alive?)
                      |j $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |false)
                  |y $ %{} :Expr (:at 1539099523985) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |:cwd)
                      |j $ %{} :Leaf (:at 1539099523985) (:by |root) (:text ||)
                  |yT $ %{} :Expr (:at 1539099523985) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099523985) (:by |root) (:text |:command)
                      |j $ %{} :Leaf (:at 1539099523985) (:by |root) (:text ||)
        |router $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:title)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |session $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                      |j $ %{} :Expr (:at 1538886507054) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1538886507646) (:by |root) (:text |do)
                          |L $ %{} :Leaf (:at 1538886508475) (:by |root) (:text |router)
                          |T $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:home)
                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:data)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529230759501) (:by |root) (:text |:messages)
                      |j $ %{} :Expr (:at 1529230760396) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529230760716) (:by |root) (:text |{})
        |user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:nickname)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |x $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:avatar)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |y $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |workflow $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099532330) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |workflow)
              |r $ %{} :Expr (:at 1539099532330) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1539099532330) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |:id)
                      |j $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |nil)
                  |r $ %{} :Expr (:at 1539099532330) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |:name)
                      |j $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |nil)
                  |v $ %{} :Expr (:at 1539099532330) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |:base-dir)
                      |j $ %{} :Leaf (:at 1553364130460) (:by |B1y7Rc-Zz) (:text "|\"~/")
                  |x $ %{} :Expr (:at 1539099532330) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |:commands)
                      |j $ %{} :Expr (:at 1553364113781) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1553364114418) (:by |B1y7Rc-Zz) (:text |do)
                          |L $ %{} :Leaf (:at 1553364115740) (:by |B1y7Rc-Zz) (:text |command)
                          |T $ %{} :Expr (:at 1539099532330) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099532330) (:by |root) (:text |{})
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
    |app.server $ %{} :FileEntry
      :defs $ {}
        |*client-caches $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553327754908) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794817571) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1553327754908) (:by |B1y7Rc-Zz) (:text |*client-caches)
              |r $ %{} :Expr (:at 1553327754908) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553327754908) (:by |B1y7Rc-Zz) (:text |{})
        |*initial-db $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629797610568) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |*initial-db)
              |r $ %{} :Expr (:at 1629797610568) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |merge-local-edn!)
                  |j $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |schema/database)
                  |r $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |storage-file)
                  |v $ %{} :Expr (:at 1629797610568) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629797610568) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |found?)
                      |r $ %{} :Expr (:at 1629797610568) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |if)
                          |j $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |found?)
                          |r $ %{} :Expr (:at 1629797610568) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text "|\"Found local EDN data")
                          |v $ %{} :Expr (:at 1629797610568) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text |println)
                              |j $ %{} :Leaf (:at 1629797610568) (:by |B1y7Rc-Zz) (:text "|\"Found no data")
        |*loop-trigger $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629797557247) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629797557247) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629797557247) (:by |B1y7Rc-Zz) (:text |*loop-trigger)
              |r $ %{} :Leaf (:at 1629797557247) (:by |B1y7Rc-Zz) (:text |0)
        |*proxied-dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629794533506) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794533506) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1629794533506) (:by |B1y7Rc-Zz) (:text |*proxied-dispatch!)
              |r $ %{} :Leaf (:at 1629794533506) (:by |B1y7Rc-Zz) (:text |dispatch!)
        |*reader-reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794810522) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |*reader-reel)
              |r $ %{} :Leaf (:at 1507829929366) (:by |root) (:text |@*reel)
        |*reel $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507808379111) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629790417260) (:by |B1y7Rc-Zz) (:text |defatom)
              |j $ %{} :Leaf (:at 1507808379111) (:by |root) (:text |*reel)
              |r $ %{} :Expr (:at 1507808379111) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507808397502) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1507808421056) (:by |root) (:text |reel-schema)
                  |r $ %{} :Expr (:at 1507808421610) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1507808424590) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1507808425954) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507808428338) (:by |root) (:text |:base)
                          |j $ %{} :Leaf (:at 1629797633156) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |r $ %{} :Expr (:at 1507808432498) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507808433485) (:by |root) (:text |:db)
                          |j $ %{} :Leaf (:at 1629797637069) (:by |B1y7Rc-Zz) (:text |@*initial-db)
        |check-version! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |check-version!)
              |r $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |pkg)
                          |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1678780329260) (:by |B1y7Rc-Zz) (:text |js/JSON.parse)
                              |r $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |fs/readFileSync)
                                  |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |path/join)
                                      |j $ %{} :Expr (:at 1678780288198) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1678780309055) (:by |B1y7Rc-Zz) (:text |fileURLToPath)
                                          |b $ %{} :Expr (:at 1678780310049) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1678780310500) (:by |B1y7Rc-Zz) (:text |new)
                                              |b $ %{} :Leaf (:at 1678780313260) (:by |B1y7Rc-Zz) (:text |js/URL)
                                              |h $ %{} :Leaf (:at 1678780314369) (:by |B1y7Rc-Zz) (:text "|\".")
                                              |l $ %{} :Leaf (:at 1678780325307) (:by |B1y7Rc-Zz) (:text |js/import.meta.url)
                                      |r $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text "|\"../package.json")
                      |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |version)
                          |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |.-version)
                              |j $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |pkg)
                  |r $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |->)
                      |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |latest-version)
                          |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |.-name)
                              |j $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |pkg)
                      |r $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1697705907032) (:by |B1y7Rc-Zz) (:text |.!then)
                          |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |npm-version)
                              |r $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |if)
                                  |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |npm-version)
                                      |r $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |version)
                                  |r $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text "|\"Running latest version")
                                      |r $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |version)
                                  |v $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553330395307) (:by |B1y7Rc-Zz) (:text |println)
                                      |j $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1676244844105) (:by |B1y7Rc-Zz) (:text |.!yellow)
                                          |T $ %{} :Leaf (:at 1676244840169) (:by |B1y7Rc-Zz) (:text |chalk)
                                          |r $ %{} :Expr (:at 1553330395307) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794985574) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1629794981043) (:by |B1y7Rc-Zz) (:text "|\"New version ")
                                              |k $ %{} :Leaf (:at 1629794981689) (:by |B1y7Rc-Zz) (:text |npm-version)
                                              |l $ %{} :Leaf (:at 1629794977665) (:by |B1y7Rc-Zz) (:text "|\" available, current one is ")
                                              |n $ %{} :Leaf (:at 1629794970012) (:by |B1y7Rc-Zz) (:text |version)
                                              |r $ %{} :Leaf (:at 1629794965195) (:by |B1y7Rc-Zz) (:text "|\" . Please upgrade!\n\nyarn global add termina\n")
        |dispatch! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507805724033) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507805746075) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507805724033) (:by |root) (:text |dispatch!)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1507806585099) (:by |root) (:text |sid)
              |t $ %{} :Expr (:at 1513612441808) (:by |root)
                :data $ {}
                  |5 $ %{} :Leaf (:at 1513612449423) (:by |root) (:text |let)
                  |9 $ %{} :Expr (:at 1553327859593) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553327859593) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327859593) (:by |B1y7Rc-Zz) (:text |op-id)
                          |b $ %{} :Expr (:at 1696745851920) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696745852751) (:by |B1y7Rc-Zz) (:text |nanoid)
                      |j $ %{} :Expr (:at 1553327859593) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327859593) (:by |B1y7Rc-Zz) (:text |op-time)
                          |j $ %{} :Expr (:at 1696745851055) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1696745851055) (:by |B1y7Rc-Zz) (:text |js/Date.now)
                  |D $ %{} :Expr (:at 1553327865600) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327865600) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1553327865600) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Expr (:at 1553327865600) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553327865600) (:by |B1y7Rc-Zz) (:text |println)
                          |j $ %{} :Leaf (:at 1553327865600) (:by |B1y7Rc-Zz) (:text ||Dispatch!)
                          |r $ %{} :Expr (:at 1553327865600) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553327865600) (:by |B1y7Rc-Zz) (:text |str)
                              |j $ %{} :Leaf (:at 1553327865600) (:by |B1y7Rc-Zz) (:text |op)
                          |x $ %{} :Leaf (:at 1553327865600) (:by |B1y7Rc-Zz) (:text |sid)
                  |T $ %{} :Expr (:at 1507807247710) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1527441254169) (:by |root) (:text |try)
                      |j $ %{} :Expr (:at 1521797553713) (:by |root)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1689561661268) (:by |B1y7Rc-Zz) (:text |tag-match)
                          |H $ %{} :Leaf (:at 1689561907893) (:by |B1y7Rc-Zz) (:text |op)
                          |L $ %{} :Expr (:at 1521797562370) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1521797565407) (:by |root)
                                :data $ {}
                                  |r $ %{} :Leaf (:at 1521797573929) (:by |root) (:text |:effect/persist)
                              |j $ %{} :Expr (:at 1521797578265) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1521797578625) (:by |root) (:text |persist-db!)
                          |P $ %{} :Expr (:at 1539099964101) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1539099964101) (:by |root)
                                :data $ {}
                                  |r $ %{} :Leaf (:at 1539099964101) (:by |root) (:text |:effect/run)
                                  |t $ %{} :Leaf (:at 1689561673399) (:by |B1y7Rc-Zz) (:text |d)
                              |j $ %{} :Expr (:at 1539099964101) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099964101) (:by |root) (:text |create-process!)
                                  |j $ %{} :Leaf (:at 1689561672213) (:by |B1y7Rc-Zz) (:text |d)
                                  |r $ %{} :Leaf (:at 1539099964101) (:by |root) (:text |dispatch!)
                                  |v $ %{} :Leaf (:at 1629797853684) (:by |B1y7Rc-Zz) (:text |sid)
                          |R $ %{} :Expr (:at 1539099968529) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1539099968529) (:by |root)
                                :data $ {}
                                  |r $ %{} :Leaf (:at 1539099968529) (:by |root) (:text |:effect/kill)
                                  |t $ %{} :Leaf (:at 1689561676558) (:by |B1y7Rc-Zz) (:text |d)
                              |j $ %{} :Expr (:at 1539099968529) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099968529) (:by |root) (:text |kill-process!)
                                  |j $ %{} :Leaf (:at 1689561677759) (:by |B1y7Rc-Zz) (:text |d)
                                  |r $ %{} :Leaf (:at 1539099968529) (:by |root) (:text |dispatch!)
                                  |v $ %{} :Leaf (:at 1629797855970) (:by |B1y7Rc-Zz) (:text |sid)
                          |T $ %{} :Expr (:at 1521797559221) (:by |root)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1689561685309) (:by |B1y7Rc-Zz) (:text |_)
                              |T $ %{} :Expr (:at 1553327891755) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |reset!)
                                  |j $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |*reel)
                                  |r $ %{} :Expr (:at 1553327891755) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                                      |j $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |@*reel)
                                      |r $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |updater)
                                      |v $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |op)
                                      |y $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |sid)
                                      |yT $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |op-id)
                                      |yj $ %{} :Leaf (:at 1553327891755) (:by |B1y7Rc-Zz) (:text |op-time)
                      |r $ %{} :Expr (:at 1527441255503) (:by |root)
                        :data $ {}
                          |P $ %{} :Leaf (:at 1629789967204) (:by |B1y7Rc-Zz) (:text |fn)
                          |r $ %{} :Expr (:at 1629789968288) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1527441275499) (:by |root) (:text |error)
                          |v $ %{} :Expr (:at 1527441280510) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1553327871020) (:by |B1y7Rc-Zz) (:text |js/console.error)
                              |r $ %{} :Leaf (:at 1527441285560) (:by |root) (:text |error)
        |main! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |main!)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
              |t $ %{} :Expr (:at 1553327931627) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553327931627) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1684121924983) (:by |B1y7Rc-Zz) (:text "|\"Running mode:")
                  |r $ %{} :Expr (:at 1553327931627) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553327931627) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Leaf (:at 1553327931627) (:by |B1y7Rc-Zz) (:text |config/dev?)
                      |r $ %{} :Leaf (:at 1553327931627) (:by |B1y7Rc-Zz) (:text "|\"dev")
                      |v $ %{} :Leaf (:at 1553327931627) (:by |B1y7Rc-Zz) (:text "|\"release")
              |v $ %{} :Expr (:at 1553734954383) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1553734967054) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1553734967616) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |j $ %{} :Expr (:at 1553734967616) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |user-port)
                          |j $ %{} :Expr (:at 1553734967616) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1553734967616) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Expr (:at 1553734967616) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |.-port)
                                      |j $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |js/process.env)
                              |r $ %{} :Expr (:at 1553734967616) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |js/parseInt)
                                  |j $ %{} :Expr (:at 1553734967616) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |.-port)
                                      |j $ %{} :Leaf (:at 1553734967616) (:by |B1y7Rc-Zz) (:text |js/process.env)
                      |r $ %{} :Expr (:at 1553734972508) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553734972508) (:by |B1y7Rc-Zz) (:text |port)
                          |j $ %{} :Expr (:at 1553734973599) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |D $ %{} :Leaf (:at 1553734975117) (:by |B1y7Rc-Zz) (:text |or)
                              |L $ %{} :Leaf (:at 1553734976817) (:by |B1y7Rc-Zz) (:text |user-port)
                              |T $ %{} :Expr (:at 1553734972508) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553734972508) (:by |B1y7Rc-Zz) (:text |:port)
                                  |j $ %{} :Leaf (:at 1553734972508) (:by |B1y7Rc-Zz) (:text |config/site)
                      |v $ %{} :Expr (:at 1553734984539) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553735004849) (:by |B1y7Rc-Zz) (:text |ui-url)
                          |j $ %{} :Expr (:at 1553734990666) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553734991533) (:by |B1y7Rc-Zz) (:text |url-parse)
                              |j $ %{} :Leaf (:at 1553734992903) (:by |B1y7Rc-Zz) (:text "|\"http://termina.mvc-works.org/")
                              |r $ %{} :Leaf (:at 1553735015881) (:by |B1y7Rc-Zz) (:text |true)
                  |T $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |run-server!)
                      |j $ %{} :Leaf (:at 1553735063123) (:by |B1y7Rc-Zz) (:text |port)
                  |b $ %{} :Expr (:at 1553734998014) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553735008660) (:by |B1y7Rc-Zz) (:text |set!)
                      |j $ %{} :Expr (:at 1553735009225) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794791772) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1553735022496) (:by |B1y7Rc-Zz) (:text |ui-url)
                          |r $ %{} :Leaf (:at 1629794793612) (:by |B1y7Rc-Zz) (:text |.-query)
                          |v $ %{} :Leaf (:at 1629794794833) (:by |B1y7Rc-Zz) (:text |.-port)
                      |r $ %{} :Leaf (:at 1553735032181) (:by |B1y7Rc-Zz) (:text |port)
                  |j $ %{} :Expr (:at 1553734980655) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553734980655) (:by |B1y7Rc-Zz) (:text |println)
                      |j $ %{} :Leaf (:at 1553734980655) (:by |B1y7Rc-Zz) (:text "|\"Server started. Open UI on ")
                      |r $ %{} :Expr (:at 1553734980655) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |L $ %{} :Leaf (:at 1676244788616) (:by |B1y7Rc-Zz) (:text |.!blue)
                          |j $ %{} :Leaf (:at 1676244786046) (:by |B1y7Rc-Zz) (:text |chalk)
                          |r $ %{} :Expr (:at 1553735035236) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1676244854792) (:by |B1y7Rc-Zz) (:text |.!toString)
                              |j $ %{} :Leaf (:at 1553735055388) (:by |B1y7Rc-Zz) (:text |ui-url)
              |w $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |render-loop!)
                  |j $ %{} :Leaf (:at 1629797567790) (:by |B1y7Rc-Zz) (:text |*loop-trigger)
              |y $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |j $ %{} :Leaf (:at 1553327940417) (:by |B1y7Rc-Zz) (:text |js/process.on)
                  |r $ %{} :Leaf (:at 1553327943459) (:by |B1y7Rc-Zz) (:text "|\"SIGINT")
                  |v $ %{} :Leaf (:at 1507806173399) (:by |root) (:text |on-exit!)
              |yD $ %{} :Expr (:at 1553327947567) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1696745892853) (:by |B1y7Rc-Zz) (:text |flipped)
                  |T $ %{} :Leaf (:at 1696745890658) (:by |B1y7Rc-Zz) (:text |js/setInterval)
                  |j $ %{} :Leaf (:at 1553327947567) (:by |B1y7Rc-Zz) (:text |600)
                  |r $ %{} :Expr (:at 1553327947567) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629794994706) (:by |B1y7Rc-Zz) (:text |\)
                      |j $ %{} :Leaf (:at 1553327947567) (:by |B1y7Rc-Zz) (:text |persist-db!)
              |yj $ %{} :Expr (:at 1553330523459) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553330523459) (:by |B1y7Rc-Zz) (:text |check-version!)
        |on-exit! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1507806173399) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1507806175705) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1507806173399) (:by |root) (:text |on-exit!)
              |v $ %{} :Expr (:at 1507806173399) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1507806173399) (:by |root) (:text |code)
                  |j $ %{} :Leaf (:at 1629796720255) (:by |B1y7Rc-Zz) (:text |_)
              |x $ %{} :Expr (:at 1521797541557) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |persist-db!)
              |xD $ %{} :Expr (:at 1521797676085) (:by |root)
                :data $ {}
                  |D $ %{} :Leaf (:at 1553327966535) (:by |B1y7Rc-Zz) (:text |;)
                  |T $ %{} :Leaf (:at 1521797676956) (:by |root) (:text |println)
                  |j $ %{} :Leaf (:at 1521797683859) (:by |root) (:text "||exit code is:")
                  |r $ %{} :Expr (:at 1521797684755) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1521797685691) (:by |root) (:text |pr-str)
                      |j $ %{} :Leaf (:at 1521797686800) (:by |root) (:text |code)
              |yT $ %{} :Expr (:at 1507806173399) (:by |root)
                :data $ {}
                  |j $ %{} :Leaf (:at 1629796723678) (:by |B1y7Rc-Zz) (:text |js/process.exit)
        |persist-db! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1521797534647) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1521797538383) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |persist-db!)
              |n $ %{} :Expr (:at 1521797539426) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1529516703080) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529516707700) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1529516711063) (:by |root)
                    :data $ {}
                      |5 $ %{} :Expr (:at 1529516837153) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529516842334) (:by |root) (:text |file-content)
                          |j $ %{} :Expr (:at 1521797534647) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794313756) (:by |B1y7Rc-Zz) (:text |format-cirru-edn)
                              |j $ %{} :Expr (:at 1553329514029) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1553329515213) (:by |B1y7Rc-Zz) (:text |->)
                                  |L $ %{} :Expr (:at 1553329524114) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553329524114) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1553329524114) (:by |B1y7Rc-Zz) (:text |@*reel)
                                  |T $ %{} :Expr (:at 1521797534647) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553364172586) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |r $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |:sessions)
                                      |v $ %{} :Expr (:at 1521797534647) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1521797534647) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1553329525877) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553364175125) (:by |B1y7Rc-Zz) (:text |update)
                                      |j $ %{} :Leaf (:at 1553329531453) (:by |B1y7Rc-Zz) (:text |:processes)
                                      |r $ %{} :Expr (:at 1553364317117) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1553364319700) (:by |B1y7Rc-Zz) (:text |fn)
                                          |L $ %{} :Expr (:at 1553364320457) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553364322723) (:by |B1y7Rc-Zz) (:text |processes)
                                          |T $ %{} :Expr (:at 1553364323941) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |D $ %{} :Leaf (:at 1629794306371) (:by |B1y7Rc-Zz) (:text |->)
                                              |L $ %{} :Leaf (:at 1553364327768) (:by |B1y7Rc-Zz) (:text |processes)
                                              |T $ %{} :Expr (:at 1553364184854) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |D $ %{} :Leaf (:at 1629794298801) (:by |B1y7Rc-Zz) (:text |map-kv)
                                                  |T $ %{} :Expr (:at 1553364176839) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1553364177677) (:by |B1y7Rc-Zz) (:text |fn)
                                                      |L $ %{} :Expr (:at 1553364178600) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1553364179773) (:by |B1y7Rc-Zz) (:text |k)
                                                          |j $ %{} :Leaf (:at 1553364180321) (:by |B1y7Rc-Zz) (:text |v)
                                                      |T $ %{} :Expr (:at 1553329531817) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1553364244780) (:by |B1y7Rc-Zz) (:text |[])
                                                          |T $ %{} :Leaf (:at 1553364192221) (:by |B1y7Rc-Zz) (:text |k)
                                                          |j $ %{} :Expr (:at 1553364193118) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1553364194713) (:by |B1y7Rc-Zz) (:text |assoc)
                                                              |j $ %{} :Leaf (:at 1553364196368) (:by |B1y7Rc-Zz) (:text |v)
                                                              |r $ %{} :Leaf (:at 1553364199593) (:by |B1y7Rc-Zz) (:text |:alive?)
                                                              |v $ %{} :Leaf (:at 1553364200518) (:by |B1y7Rc-Zz) (:text |false)
                  |n $ %{} :Expr (:at 1553328005767) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553328005767) (:by |B1y7Rc-Zz) (:text |write-mildly!)
                      |j $ %{} :Leaf (:at 1553328337486) (:by |B1y7Rc-Zz) (:text |storage-file)
                      |r $ %{} :Leaf (:at 1553328005767) (:by |B1y7Rc-Zz) (:text |file-content)
        |reload! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |reload!)
              |r $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
              |v $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |println)
                  |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text "|\"Code updated.")
              |x $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
              |y $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |reset!)
                  |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |*proxied-dispatch!)
                  |r $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |dispatch!)
              |yT $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |reset!)
                  |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |*reel)
                  |r $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                      |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |@*reel)
                      |r $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |@*initial-db)
                      |v $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |updater)
              |yj $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |js/clearTimeout)
                  |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |@*loop-trigger)
              |yr $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |render-loop!)
                  |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |*loop-trigger)
              |yv $ %{} :Expr (:at 1629797513127) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                  |j $ %{} :Leaf (:at 1629797513127) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
        |render-loop! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |render-loop!)
              |r $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |*loop)
              |v $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |when)
                  |j $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |not)
                      |j $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |identical?)
                          |j $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
                          |r $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |r $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |reset!)
                      |j $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |*reader-reel)
                      |r $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |@*reel)
                  |v $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |sync-clients!)
                      |j $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |@*reader-reel)
              |x $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |reset!)
                  |j $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |*loop)
                  |r $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1696745872844) (:by |B1y7Rc-Zz) (:text |flipped)
                      |T $ %{} :Leaf (:at 1696745871177) (:by |B1y7Rc-Zz) (:text |js/setTimeout)
                      |j $ %{} :Leaf (:at 1696745874685) (:by |B1y7Rc-Zz) (:text |200)
                      |r $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |fn)
                          |j $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                            :data $ {}
                          |r $ %{} :Expr (:at 1629797579899) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |render-loop!)
                              |j $ %{} :Leaf (:at 1629797579899) (:by |B1y7Rc-Zz) (:text |*loop)
        |run-server! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |run-server!)
              |r $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |port)
              |v $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                  |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |port)
                  |r $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |{})
                      |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |:on-open)
                          |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |sid)
                                  |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |socket)
                              |r $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |@*proxied-dispatch!)
                                  |j $ %{} :Expr (:at 1689561622553) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1689561623252) (:by |B1y7Rc-Zz) (:text |::)
                                      |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |:session/connect)
                                  |v $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text "|\"New client.")
                      |r $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |:on-data)
                          |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |sid)
                                  |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |action)
                              |r $ %{} :Expr (:at 1689561628438) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1689561628438) (:by |B1y7Rc-Zz) (:text |@*proxied-dispatch!)
                                  |c $ %{} :Leaf (:at 1689561637486) (:by |B1y7Rc-Zz) (:text |action)
                                  |l $ %{} :Leaf (:at 1689561628438) (:by |B1y7Rc-Zz) (:text |sid)
                      |v $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |:on-close)
                          |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |sid)
                                  |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |event)
                              |r $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text "|\"Client closed!")
                              |v $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |@*proxied-dispatch!)
                                  |j $ %{} :Expr (:at 1689561640437) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1689561641087) (:by |B1y7Rc-Zz) (:text |::)
                                      |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                                  |v $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |sid)
                      |x $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |:on-error)
                          |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |error)
                              |r $ %{} :Expr (:at 1629794516459) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |js/console.error)
                                  |j $ %{} :Leaf (:at 1629794516459) (:by |B1y7Rc-Zz) (:text |error)
        |storage-file $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553328072055) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553328072055) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1553328072055) (:by |B1y7Rc-Zz) (:text |storage-file)
              |r $ %{} :Expr (:at 1553328072055) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553328072055) (:by |B1y7Rc-Zz) (:text |path/join)
                  |j $ %{} :Leaf (:at 1553329782884) (:by |B1y7Rc-Zz) (:text |js/process.env.HOME)
                  |n $ %{} :Leaf (:at 1553329846299) (:by |B1y7Rc-Zz) (:text "|\".config")
                  |r $ %{} :Expr (:at 1553328072055) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553328072055) (:by |B1y7Rc-Zz) (:text |:storage-file)
                      |j $ %{} :Leaf (:at 1553328072055) (:by |B1y7Rc-Zz) (:text |config/site)
        |sync-clients! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |sync-clients!)
              |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |reel)
              |v $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |wss-each!)
                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |fn)
                      |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |sid)
                          |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |socket)
                      |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |let)
                          |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |db)
                                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:db)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |reel)
                              |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |records)
                                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:records)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |reel)
                              |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |session)
                                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |get-in)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |[])
                                          |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:sessions)
                                          |r $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |old-store)
                                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |or)
                                      |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |get)
                                          |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |@*client-caches)
                                          |r $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |nil)
                              |x $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |new-store)
                                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |twig-container)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |db)
                                      |r $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |session)
                                      |v $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |records)
                              |y $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |changes)
                                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |diff-twig)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |old-store)
                                      |r $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |new-store)
                                      |v $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:key)
                                              |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:id)
                          |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |when)
                              |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |config/dev?)
                              |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |println)
                                  |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text "|\"Changes for")
                                  |r $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text "|\":")
                                  |x $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |changes)
                                  |y $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |count)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |records)
                          |v $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |not=)
                                  |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |[])
                              |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |do)
                                  |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |wss-send!)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |sid)
                                      |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |{})
                                          |j $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:kind)
                                              |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:patch)
                                          |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |:data)
                                              |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |changes)
                                  |r $ %{} :Expr (:at 1629794558211) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |swap!)
                                      |j $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |*client-caches)
                                      |r $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |v $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |sid)
                                      |x $ %{} :Leaf (:at 1629794558211) (:by |B1y7Rc-Zz) (:text |new-store)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.server)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1517931127726) (:by |root) (:text |app.updater)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
                |y9 $ %{} :Expr (:at 1553327790936) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327790936) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327790936) (:by |B1y7Rc-Zz) (:text |cumulo-reel.core)
                    |r $ %{} :Leaf (:at 1553327790936) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327790936) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327790936) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327790936) (:by |B1y7Rc-Zz) (:text |reel-reducer)
                        |r $ %{} :Leaf (:at 1553327790936) (:by |B1y7Rc-Zz) (:text |refresh-reel)
                        |v $ %{} :Leaf (:at 1553327790936) (:by |B1y7Rc-Zz) (:text |reel-schema)
                |yT $ %{} :Expr (:at 1507804915408) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1507804916099) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1676244665475) (:by |B1y7Rc-Zz) (:text "|\"node:fs")
                    |r $ %{} :Leaf (:at 1507804918168) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1507804918540) (:by |root) (:text |fs)
                |ye $ %{} :Expr (:at 1553327800677) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327801077) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327804771) (:by |B1y7Rc-Zz) (:text "|\"child_process")
                    |r $ %{} :Leaf (:at 1553327805191) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1553327806678) (:by |B1y7Rc-Zz) (:text |cp)
                |yp $ %{} :Expr (:at 1529516876237) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529516877607) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1676244677829) (:by |B1y7Rc-Zz) (:text "|\"node:path")
                    |r $ %{} :Leaf (:at 1529516879821) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529516880491) (:by |root) (:text |path)
                |ys $ %{} :Expr (:at 1553330560013) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553330560013) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553330560013) (:by |B1y7Rc-Zz) (:text "|\"latest-version")
                    |r $ %{} :Leaf (:at 1629794861565) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1553330560013) (:by |B1y7Rc-Zz) (:text |latest-version)
                |ytD $ %{} :Expr (:at 1553330566606) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553330566606) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553330566606) (:by |B1y7Rc-Zz) (:text "|\"chalk")
                    |r $ %{} :Leaf (:at 1676244762796) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1553330566606) (:by |B1y7Rc-Zz) (:text |chalk)
                |yu $ %{} :Expr (:at 1678780291068) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1678780293129) (:by |B1y7Rc-Zz) (:text "|\"node:url")
                    |b $ %{} :Leaf (:at 1678780297246) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1678780300276) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1678780300599) (:by |B1y7Rc-Zz) (:text |fileURLToPath)
                |yvT $ %{} :Expr (:at 1553327825468) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327825468) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327825468) (:by |B1y7Rc-Zz) (:text |app.config)
                    |r $ %{} :Leaf (:at 1553327825468) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1553327825468) (:by |B1y7Rc-Zz) (:text |config)
                |yw $ %{} :Expr (:at 1553327817638) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327817638) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327817638) (:by |B1y7Rc-Zz) (:text |cumulo-util.file)
                    |r $ %{} :Leaf (:at 1553327817638) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327817638) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327817638) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327817638) (:by |B1y7Rc-Zz) (:text |write-mildly!)
                        |v $ %{} :Leaf (:at 1553327817638) (:by |B1y7Rc-Zz) (:text |merge-local-edn!)
                |yxD $ %{} :Expr (:at 1553327836863) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327836863) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327836863) (:by |B1y7Rc-Zz) (:text |app.twig.container)
                    |r $ %{} :Leaf (:at 1553327836863) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327836863) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327836863) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327836863) (:by |B1y7Rc-Zz) (:text |twig-container)
                |yxb $ %{} :Expr (:at 1553327843449) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327843449) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327843449) (:by |B1y7Rc-Zz) (:text |recollect.diff)
                    |r $ %{} :Leaf (:at 1553327843449) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327843449) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327843449) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327843449) (:by |B1y7Rc-Zz) (:text |diff-twig)
                |yxn $ %{} :Expr (:at 1553327846243) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327846243) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327846243) (:by |B1y7Rc-Zz) (:text |recollect.twig)
                    |r $ %{} :Leaf (:at 1553327846243) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327846243) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327846243) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327846243) (:by |B1y7Rc-Zz) (:text |render-twig)
                        |v $ %{} :Leaf (:at 1629797536084) (:by |B1y7Rc-Zz) (:text |clear-twig-caches!)
                |yxt $ %{} :Expr (:at 1553327850361) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553327850361) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553327850361) (:by |B1y7Rc-Zz) (:text |ws-edn.server)
                    |r $ %{} :Leaf (:at 1553327850361) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1553327850361) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1553327850361) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1553327850361) (:by |B1y7Rc-Zz) (:text |wss-serve!)
                        |r $ %{} :Leaf (:at 1553327850361) (:by |B1y7Rc-Zz) (:text |wss-send!)
                        |v $ %{} :Leaf (:at 1553327850361) (:by |B1y7Rc-Zz) (:text |wss-each!)
                |yy $ %{} :Expr (:at 1539099978847) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099978847) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099984962) (:by |root) (:text |app.manager)
                    |r $ %{} :Leaf (:at 1539099978847) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1539099978847) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1539099978847) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1539099978847) (:by |root) (:text |create-process!)
                        |r $ %{} :Leaf (:at 1539099978847) (:by |root) (:text |kill-process!)
                |yyj $ %{} :Expr (:at 1553735073025) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1553735073344) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1553735075579) (:by |B1y7Rc-Zz) (:text "|\"url-parse")
                    |r $ %{} :Leaf (:at 1629794641384) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1553735078360) (:by |B1y7Rc-Zz) (:text |url-parse)
                |z $ %{} :Expr (:at 1696745855174) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1696745856621) (:by |B1y7Rc-Zz) (:text "|\"nanoid")
                    |b $ %{} :Leaf (:at 1696745858232) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1696745858476) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1696745858718) (:by |B1y7Rc-Zz) (:text |nanoid)
    |app.style $ %{} :FileEntry
      :defs $ {}
        |button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099205546) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099205546) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539099205546) (:by |root) (:text |button)
              |r $ %{} :Expr (:at 1539099205546) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099205546) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1539099205546) (:by |root) (:text |ui/button)
                  |r $ %{} :Expr (:at 1539099205546) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099205546) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1553495204981) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553495208709) (:by |B1y7Rc-Zz) (:text |:background-color)
                          |j $ %{} :Leaf (:at 1553495211040) (:by |B1y7Rc-Zz) (:text |:transparent)
        |css-button $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1684291522150) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1684291524285) (:by |B1y7Rc-Zz) (:text |defstyle)
              |b $ %{} :Leaf (:at 1684291522150) (:by |B1y7Rc-Zz) (:text |css-button)
              |h $ %{} :Expr (:at 1684291522150) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1684291525893) (:by |B1y7Rc-Zz) (:text |{})
                  |b $ %{} :Expr (:at 1684291526331) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1684291737530) (:by |B1y7Rc-Zz) (:text "|\"button$0")
                      |b $ %{} :Expr (:at 1684291527830) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1684291527830) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1684291527830) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1684291527830) (:by |B1y7Rc-Zz) (:text |:background-color)
                              |b $ %{} :Leaf (:at 1684291527830) (:by |B1y7Rc-Zz) (:text |:transparent)
                  |h $ %{} :Expr (:at 1684291526331) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1684291740612) (:by |B1y7Rc-Zz) (:text "|\"button$0:hover")
                      |b $ %{} :Expr (:at 1684291527830) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1684291527830) (:by |B1y7Rc-Zz) (:text |{})
                          |b $ %{} :Expr (:at 1684291527830) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1684291527830) (:by |B1y7Rc-Zz) (:text |:background-color)
                              |b $ %{} :Expr (:at 1684292484184) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1684292484576) (:by |B1y7Rc-Zz) (:text |hsl)
                                  |b $ %{} :Leaf (:at 1684292484861) (:by |B1y7Rc-Zz) (:text |0)
                                  |h $ %{} :Leaf (:at 1684292485188) (:by |B1y7Rc-Zz) (:text |0)
                                  |l $ %{} :Leaf (:at 1684292485690) (:by |B1y7Rc-Zz) (:text |100)
                                  |o $ %{} :Leaf (:at 1684292493290) (:by |B1y7Rc-Zz) (:text |0.06)
        |input $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099217894) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099217894) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1539099217894) (:by |root) (:text |input)
              |r $ %{} :Expr (:at 1539099217894) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099217894) (:by |root) (:text |merge)
                  |j $ %{} :Leaf (:at 1539099217894) (:by |root) (:text |ui/input)
                  |r $ %{} :Expr (:at 1539099217894) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099217894) (:by |root) (:text |{})
                      |j $ %{} :Expr (:at 1539099217894) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099217894) (:by |root) (:text |:width)
                          |j $ %{} :Leaf (:at 1539099217894) (:by |root) (:text |320)
        |link $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1519367966237) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1519367970413) (:by |root) (:text |def)
              |j $ %{} :Leaf (:at 1519367966237) (:by |root) (:text |link)
              |r $ %{} :Expr (:at 1519367966237) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1519367974187) (:by |root) (:text |{})
                  |j $ %{} :Expr (:at 1519367974501) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367980887) (:by |root) (:text |:text-decoration)
                      |j $ %{} :Leaf (:at 1519367984967) (:by |root) (:text |:underline)
                  |r $ %{} :Expr (:at 1519367985371) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519367998049) (:by |root) (:text |:cursor)
                      |j $ %{} :Leaf (:at 1519367996458) (:by |root) (:text |:pointer)
                  |v $ %{} :Expr (:at 1519368028360) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368029579) (:by |root) (:text |:color)
                      |j $ %{} :Expr (:at 1519368031142) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1519368031562) (:by |root) (:text |hsl)
                          |j $ %{} :Leaf (:at 1519368032307) (:by |root) (:text |240)
                          |r $ %{} :Leaf (:at 1519368032737) (:by |root) (:text |80)
                          |v $ %{} :Leaf (:at 1519368033240) (:by |root) (:text |80)
                  |x $ %{} :Expr (:at 1519368217607) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1519368219848) (:by |root) (:text |:font-family)
                      |j $ %{} :Leaf (:at 1519368227853) (:by |root) (:text |ui/font-fancy)
                  |y $ %{} :Expr (:at 1539195775271) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539195777624) (:by |root) (:text |:margin)
                      |j $ %{} :Leaf (:at 1539195780312) (:by |root) (:text "|\"0 8px")
        |text $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553450452951) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553450455380) (:by |B1y7Rc-Zz) (:text |def)
              |j $ %{} :Leaf (:at 1553450452951) (:by |B1y7Rc-Zz) (:text |text)
              |r $ %{} :Expr (:at 1553450456041) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553450456041) (:by |B1y7Rc-Zz) (:text |{})
                  |j $ %{} :Expr (:at 1553450456041) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553450456041) (:by |B1y7Rc-Zz) (:text |:padding)
                      |j $ %{} :Leaf (:at 1553450456041) (:by |B1y7Rc-Zz) (:text "|\"0 8px")
                  |v $ %{} :Expr (:at 1553450628639) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553450633686) (:by |B1y7Rc-Zz) (:text |:line-height)
                      |j $ %{} :Leaf (:at 1553450699737) (:by |B1y7Rc-Zz) (:text "|\"24px")
                  |x $ %{} :Expr (:at 1553450656098) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553537997367) (:by |B1y7Rc-Zz) (:text |:min-height)
                      |j $ %{} :Leaf (:at 1553450702239) (:by |B1y7Rc-Zz) (:text |24)
                  |y $ %{} :Expr (:at 1553450690266) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553450692868) (:by |B1y7Rc-Zz) (:text |:display)
                      |j $ %{} :Leaf (:at 1553450695367) (:by |B1y7Rc-Zz) (:text |:inline-block)
                  |yT $ %{} :Expr (:at 1553536027323) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553536028404) (:by |B1y7Rc-Zz) (:text |:color)
                      |j $ %{} :Leaf (:at 1553536029753) (:by |B1y7Rc-Zz) (:text |:white)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1519367963533) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1519367963533) (:by |root) (:text |app.style)
            |r $ %{} :Expr (:at 1519368036923) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1519368038192) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1519368038575) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368038764) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1629788805547) (:by |B1y7Rc-Zz) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368041713) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1519368041918) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1519368042785) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1519368043289) (:by |root) (:text |hsl)
                |r $ %{} :Expr (:at 1519368236509) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1519368236979) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1519368258261) (:by |root) (:text |respo-ui.core)
                    |r $ %{} :Leaf (:at 1519368241627) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1519368242073) (:by |root) (:text |ui)
                |t $ %{} :Expr (:at 1684291531565) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1684291532656) (:by |B1y7Rc-Zz) (:text |respo.css)
                    |b $ %{} :Leaf (:at 1684291535545) (:by |B1y7Rc-Zz) (:text |:refer)
                    |h $ %{} :Expr (:at 1684291535783) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1684291537636) (:by |B1y7Rc-Zz) (:text |defstyle)
    |app.twig.container $ %{} :FileEntry
      :defs $ {}
        |twig-container $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794572468) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-container)
              |n $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                  |r $ %{} :Leaf (:at 1507828952210) (:by |root) (:text |records)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794593315) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |some?)
                              |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1507830626848) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1507830630278) (:by |root) (:text |base-data)
                          |j $ %{} :Expr (:at 1507830631302) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1507830631896) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1507830632113) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830641027) (:by |root) (:text |:logged-in?)
                                  |j $ %{} :Leaf (:at 1507830639219) (:by |root) (:text |logged-in?)
                              |n $ %{} :Expr (:at 1507830674443) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830677551) (:by |root) (:text |:session)
                                  |j $ %{} :Leaf (:at 1507830679311) (:by |root) (:text |session)
                              |v $ %{} :Expr (:at 1507830649968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1507830655148) (:by |root) (:text |:reel-length)
                                  |j $ %{} :Expr (:at 1507830655987) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1507830657551) (:by |root) (:text |count)
                                      |j $ %{} :Leaf (:at 1507830658789) (:by |root) (:text |records)
                      |v $ %{} :Expr (:at 1539099575916) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099575916) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099575916) (:by |root) (:text |{})
                              |j $ %{} :Leaf (:at 1539099575916) (:by |root) (:text |workflows)
                              |r $ %{} :Leaf (:at 1539099575916) (:by |root) (:text |processes)
                              |v $ %{} :Leaf (:at 1539099575916) (:by |root) (:text |histories)
                          |j $ %{} :Leaf (:at 1539099575916) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1507830661017) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1507830661999) (:by |root) (:text |merge)
                      |L $ %{} :Leaf (:at 1507830664014) (:by |root) (:text |base-data)
                      |T $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |logged-in?)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user)
                                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |get-in)
                                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:users)
                                              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                                                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                              |x $ %{} :Expr (:at 1500541255553) (:by nil)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                                  |j $ %{} :Expr (:at 1524070628251) (:by |root)
                                    :data $ {}
                                      |D $ %{} :Leaf (:at 1524070634499) (:by |root) (:text |assoc)
                                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                                      |j $ %{} :Leaf (:at 1524070635855) (:by |root) (:text |:data)
                                      |r $ %{} :Expr (:at 1524070636122) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794604289) (:by |B1y7Rc-Zz) (:text |case-default)
                                          |j $ %{} :Expr (:at 1524070641804) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070642493) (:by |root) (:text |:name)
                                              |j $ %{} :Leaf (:at 1524070643351) (:by |root) (:text |router)
                                          |k $ %{} :Expr (:at 1629794605159) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794605159) (:by |B1y7Rc-Zz) (:text |{})
                                          |l $ %{} :Expr (:at 1539099625144) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099625144) (:by |root) (:text |:history)
                                              |j $ %{} :Expr (:at 1539099625144) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099625144) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1539099625144) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099625144) (:by |root) (:text |:histories)
                                                      |j $ %{} :Leaf (:at 1539099625144) (:by |root) (:text |histories)
                                          |n $ %{} :Expr (:at 1539099620184) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099620184) (:by |root) (:text |:workflows)
                                              |j $ %{} :Expr (:at 1539099620184) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099620184) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1539099620184) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099620184) (:by |root) (:text |:workflows)
                                                      |j $ %{} :Leaf (:at 1539099620184) (:by |root) (:text |workflows)
                                          |p $ %{} :Expr (:at 1539099614616) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099614616) (:by |root) (:text |:home)
                                              |j $ %{} :Expr (:at 1539099614616) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099614616) (:by |root) (:text |{})
                                                  |j $ %{} :Expr (:at 1539099614616) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099614616) (:by |root) (:text |:processes)
                                                      |j $ %{} :Leaf (:at 1539099614616) (:by |root) (:text |processes)
                                                  |r $ %{} :Expr (:at 1539099614616) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1539099614616) (:by |root) (:text |:workflows)
                                                      |j $ %{} :Leaf (:at 1539099614616) (:by |root) (:text |workflows)
                                          |q $ %{} :Expr (:at 1539099632627) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |:process)
                                              |j $ %{} :Expr (:at 1539099632627) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |let)
                                                  |j $ %{} :Expr (:at 1539099632627) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Expr (:at 1539099632627) (:by |root)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |process-id)
                                                          |j $ %{} :Expr (:at 1539099632627) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |->)
                                                              |j $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |router)
                                                              |r $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |:params)
                                                              |v $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |:id)
                                                  |r $ %{} :Expr (:at 1704129556039) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |D $ %{} :Leaf (:at 1704129556626) (:by |B1y7Rc-Zz) (:text |{})
                                                      |T $ %{} :Expr (:at 1704129557750) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |D $ %{} :Leaf (:at 1704129559966) (:by |B1y7Rc-Zz) (:text |:detail)
                                                          |T $ %{} :Expr (:at 1539099632627) (:by |root)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |get)
                                                              |j $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |processes)
                                                              |r $ %{} :Leaf (:at 1539099632627) (:by |root) (:text |process-id)
                                                      |b $ %{} :Expr (:at 1704129636763) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1704129772298) (:by |B1y7Rc-Zz) (:text |:dict)
                                                          |b $ %{} :Expr (:at 1704129643624) (:by |B1y7Rc-Zz)
                                                            :data $ {}
                                                              |T $ %{} :Leaf (:at 1704129644478) (:by |B1y7Rc-Zz) (:text |->)
                                                              |b $ %{} :Leaf (:at 1704129655358) (:by |B1y7Rc-Zz) (:text |processes)
                                                              |h $ %{} :Expr (:at 1704129676700) (:by |B1y7Rc-Zz)
                                                                :data $ {}
                                                                  |T $ %{} :Leaf (:at 1704129675162) (:by |B1y7Rc-Zz) (:text |.map-kv)
                                                                  |b $ %{} :Expr (:at 1704129677212) (:by |B1y7Rc-Zz)
                                                                    :data $ {}
                                                                      |T $ %{} :Leaf (:at 1704129677478) (:by |B1y7Rc-Zz) (:text |fn)
                                                                      |b $ %{} :Expr (:at 1704129677715) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1704129678420) (:by |B1y7Rc-Zz) (:text |k)
                                                                          |b $ %{} :Leaf (:at 1704129678793) (:by |B1y7Rc-Zz) (:text |v)
                                                                      |h $ %{} :Expr (:at 1704129679318) (:by |B1y7Rc-Zz)
                                                                        :data $ {}
                                                                          |T $ %{} :Leaf (:at 1704129679607) (:by |B1y7Rc-Zz) (:text |[])
                                                                          |b $ %{} :Leaf (:at 1704129680881) (:by |B1y7Rc-Zz) (:text |k)
                                                                          |h $ %{} :Expr (:at 1704129702081) (:by |B1y7Rc-Zz)
                                                                            :data $ {}
                                                                              |D $ %{} :Leaf (:at 1704129703377) (:by |B1y7Rc-Zz) (:text |dissoc)
                                                                              |T $ %{} :Leaf (:at 1704129681255) (:by |B1y7Rc-Zz) (:text |v)
                                                                              |b $ %{} :Leaf (:at 1704129705949) (:by |B1y7Rc-Zz) (:text |:content)
                                          |r $ %{} :Expr (:at 1524070643948) (:by |root)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1524070646898) (:by |root) (:text |:profile)
                                              |j $ %{} :Expr (:at 1524070654495) (:by |root)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1524070662619) (:by |root) (:text |twig-members)
                                                  |j $ %{} :Expr (:at 1524070665615) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070670477) (:by |root) (:text |:sessions)
                                                      |j $ %{} :Leaf (:at 1524070672563) (:by |root) (:text |db)
                                                  |r $ %{} :Expr (:at 1524070673171) (:by |root)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1524070674094) (:by |root) (:text |:users)
                                                      |j $ %{} :Leaf (:at 1524070675166) (:by |root) (:text |db)
                              |y $ %{} :Expr (:at 1523120222572) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1523120223864) (:by |root) (:text |:count)
                                  |j $ %{} :Expr (:at 1523120229051) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1523120230136) (:by |root) (:text |count)
                                      |j $ %{} :Expr (:at 1523120230346) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1523120232122) (:by |root) (:text |:sessions)
                                          |j $ %{} :Leaf (:at 1523120232500) (:by |root) (:text |db)
                              |yT $ %{} :Expr (:at 1524279105545) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1533834715393) (:by |B1y7Rc-Zz) (:text |:color)
                                  |j $ %{} :Expr (:at 1524279111422) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524279116617) (:by |root) (:text |color/randomColor)
                          |v $ %{} :Leaf (:at 1507830683551) (:by |root) (:text |nil)
        |twig-members $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1524070676419) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794825087) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1524070676419) (:by |root) (:text |twig-members)
              |r $ %{} :Expr (:at 1524070676419) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1524070680419) (:by |root) (:text |sessions)
                  |j $ %{} :Leaf (:at 1524070708862) (:by |root) (:text |users)
              |v $ %{} :Expr (:at 1524070683188) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794630155) (:by |B1y7Rc-Zz) (:text |->)
                  |j $ %{} :Leaf (:at 1524070692906) (:by |root) (:text |sessions)
                  |r $ %{} :Expr (:at 1524070693234) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629794624317) (:by |B1y7Rc-Zz) (:text |map-kv)
                      |j $ %{} :Expr (:at 1524070696021) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1524070696334) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1524070696681) (:by |root)
                            :data $ {}
                              |j $ %{} :Leaf (:at 1524070697507) (:by |root) (:text |k)
                              |r $ %{} :Leaf (:at 1524070699358) (:by |root) (:text |session)
                          |r $ %{} :Expr (:at 1524070700350) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1524070701520) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1524070702142) (:by |root) (:text |k)
                              |r $ %{} :Expr (:at 1524070702968) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1524070705127) (:by |root) (:text |get-in)
                                  |j $ %{} :Leaf (:at 1524070714762) (:by |root) (:text |users)
                                  |r $ %{} :Expr (:at 1524070715457) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1524070716715) (:by |root) (:text |[])
                                      |j $ %{} :Expr (:at 1524070717257) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1524070720176) (:by |root) (:text |:user-id)
                                          |j $ %{} :Leaf (:at 1524070722292) (:by |root) (:text |session)
                                      |r $ %{} :Leaf (:at 1524070725752) (:by |root) (:text |:name)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.container)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
                |v $ %{} :Expr (:at 1524279121206) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1524279121814) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1524279148454) (:by |root) (:text "|\"randomcolor")
                    |r $ %{} :Leaf (:at 1629794578784) (:by |B1y7Rc-Zz) (:text |:as)
                    |v $ %{} :Leaf (:at 1524279134256) (:by |root) (:text |color)
    |app.twig.user $ %{} :FileEntry
      :defs $ {}
        |twig-user $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794612360) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |twig-user)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:password)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.twig.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
    |app.updater $ %{} :FileEntry
      :defs $ {}
        |updater $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |updater)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op)
                  |v $ %{} :Leaf (:at 1517930722619) (:by |root) (:text |sid)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |y $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |tag-match)
                  |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op)
                  |h $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:session/connect)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |session/connect)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |l $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:session/disconnect)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |session/disconnect)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |o $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:session/remove-message)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |session/remove-message)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |q $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:user/log-in)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |user/log-in)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |s $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:user/sign-up)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |user/sign-up)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |t $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:user/log-out)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |user/log-out)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |u $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:router/change)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |router/change)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |v $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/create)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/create)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |w $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/stdout)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/stdout)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |x $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/stderr)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/stderr)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |y $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/error)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/error)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |z $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/clear)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/clear)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zD $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/finish)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/finish)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zP $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/remove-dead)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/remove-dead)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zY $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/shorten-content)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/shorten-content)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |ze $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:workflow/create)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |workflow/create-workflow)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zj $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:workflow/remove)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |workflow/remove-workflow)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zn $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:workflow/add-command)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |workflow/add-command)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zq $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:workflow/remove-command)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |workflow/remove-command)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zs $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:workflow/edit-command)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |workflow/edit-command)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zt $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:workflow/edit)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |workflow/edit-workflow)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zu $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |:process/clear-history)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |process/clear-history)
                          |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |d)
                          |l $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |sid)
                          |o $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-id)
                          |q $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op-time)
                  |zv $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |_)
                      |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |do)
                          |b $ %{} :Expr (:at 1689561862588) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |println)
                              |b $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text "||Unknown op:")
                              |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |op)
                          |h $ %{} :Leaf (:at 1689561862588) (:by |B1y7Rc-Zz) (:text |db)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                |r $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |user)
                |v $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |router)
                |y $ %{} :Expr (:at 1529231005993) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231006285) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231007723) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1529231008972) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1529231009860) (:by |root) (:text |schema)
                |yT $ %{} :Expr (:at 1529231108810) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1529231110305) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1529231113905) (:by |root) (:text |respo-message.updater)
                    |r $ %{} :Leaf (:at 1529231114617) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1529231114849) (:by |root)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1529231116379) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1529231118760) (:by |root) (:text |update-messages)
                |yj $ %{} :Expr (:at 1539099787001) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099787001) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099795078) (:by |root) (:text |app.updater.process)
                    |r $ %{} :Leaf (:at 1539099787001) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099787001) (:by |root) (:text |process)
                |yr $ %{} :Expr (:at 1539099787001) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099787001) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099796543) (:by |root) (:text |app.updater.workflow)
                    |r $ %{} :Leaf (:at 1539099787001) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099787001) (:by |root) (:text |workflow)
    |app.updater.process $ %{} :FileEntry
      :defs $ {}
        |clear $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099848491) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |clear)
              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:processes)
                  |v $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |processes)
                      |r $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794394465) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |processes)
                          |r $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |filter)
                              |j $ %{} :Expr (:at 1539099848491) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |fn)
                                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794406166) (:by |B1y7Rc-Zz) (:text |pair)
                                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:alive?)
                                      |j $ %{} :Expr (:at 1629794411188) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794410314) (:by |B1y7Rc-Zz) (:text |last)
                                          |j $ %{} :Leaf (:at 1629794413058) (:by |B1y7Rc-Zz) (:text |pair)
        |clear-history $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1553537083658) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1553537083658) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1553537083658) (:by |B1y7Rc-Zz) (:text |clear-history)
              |r $ %{} :Expr (:at 1553537099336) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553537099336) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1553537099336) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1553537099336) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1553537099336) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1553537099336) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1553537100044) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1553537101346) (:by |B1y7Rc-Zz) (:text |assoc)
                  |j $ %{} :Leaf (:at 1553537103366) (:by |B1y7Rc-Zz) (:text |db)
                  |r $ %{} :Leaf (:at 1553537214451) (:by |B1y7Rc-Zz) (:text |:histories)
                  |v $ %{} :Expr (:at 1553537105234) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1553537105434) (:by |B1y7Rc-Zz) (:text |[])
        |create $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099848491) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |create)
              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1553450379420) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1553450380134) (:by |B1y7Rc-Zz) (:text |let)
                  |L $ %{} :Expr (:at 1553450381031) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1553450381183) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1553450385345) (:by |B1y7Rc-Zz) (:text |new-history)
                          |j $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |merge)
                              |j $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |schema/history)
                              |r $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |:command)
                                      |j $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |:command)
                                          |j $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |op-data)
                                  |r $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |:cwd)
                                      |j $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |:cwd)
                                          |j $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |op-data)
                                  |v $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |:started-at)
                                      |j $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |op-time)
                                  |x $ %{} :Expr (:at 1553450385930) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |:id)
                                      |j $ %{} :Leaf (:at 1553450385930) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |y $ %{} :Expr (:at 1553451463769) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553451464706) (:by |B1y7Rc-Zz) (:text |:title)
                                      |j $ %{} :Expr (:at 1553451466126) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1553451467347) (:by |B1y7Rc-Zz) (:text |:title)
                                          |T $ %{} :Leaf (:at 1553451465853) (:by |B1y7Rc-Zz) (:text |op-data)
                  |T $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |->)
                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |assoc-in)
                          |j $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:processes)
                              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:pid)
                                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                          |r $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |schema/process)
                              |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                              |v $ %{} :Expr (:at 1539099848491) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:started-at)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
                                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:alive?)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |true)
                      |v $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |update)
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:histories)
                          |r $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |fn)
                              |j $ %{} :Expr (:at 1539099848491) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |histories)
                              |r $ %{} :Expr (:at 1553450361424) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |D $ %{} :Leaf (:at 1553450362061) (:by |B1y7Rc-Zz) (:text |if)
                                  |L $ %{} :Expr (:at 1553450362684) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794747003) (:by |B1y7Rc-Zz) (:text |list?)
                                      |j $ %{} :Leaf (:at 1553450367470) (:by |B1y7Rc-Zz) (:text |histories)
                                  |T $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |conj)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |histories)
                                      |r $ %{} :Leaf (:at 1553450392145) (:by |B1y7Rc-Zz) (:text |new-history)
                                  |j $ %{} :Expr (:at 1553450757978) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553450757978) (:by |B1y7Rc-Zz) (:text |[])
                                      |j $ %{} :Leaf (:at 1553450757978) (:by |B1y7Rc-Zz) (:text |new-history)
        |error $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099848491) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |error)
              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794388756) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |pid)
                              |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |data)
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:processes)
                          |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |pid)
                          |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:content)
                      |v $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |content)
                          |r $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |conj)
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |content)
                              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:type)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:error)
                                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:data)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |data)
        |finish $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099848491) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |finish)
              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:processes)
                      |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                      |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:alive?)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |false)
        |remove-dead $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1567393463543) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1567393475157) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1567393463543) (:by |B1y7Rc-Zz) (:text |remove-dead)
              |r $ %{} :Expr (:at 1567393470806) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1567393470806) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1567393470806) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1567393470806) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1567393470806) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1567393470806) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1567393534797) (:by |B1y7Rc-Zz)
                :data $ {}
                  |D $ %{} :Leaf (:at 1567393535369) (:by |B1y7Rc-Zz) (:text |if)
                  |L $ %{} :Expr (:at 1567393567627) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1567393570368) (:by |B1y7Rc-Zz) (:text |=)
                      |L $ %{} :Leaf (:at 1567393571646) (:by |B1y7Rc-Zz) (:text |false)
                      |T $ %{} :Expr (:at 1567393535810) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1567393538225) (:by |B1y7Rc-Zz) (:text |get-in)
                          |j $ %{} :Leaf (:at 1567393538634) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1567393539455) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1567393539677) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1567393542944) (:by |B1y7Rc-Zz) (:text |:processes)
                              |r $ %{} :Leaf (:at 1567393545560) (:by |B1y7Rc-Zz) (:text |op-data)
                              |v $ %{} :Leaf (:at 1567393547359) (:by |B1y7Rc-Zz) (:text |:alive?)
                  |P $ %{} :Expr (:at 1567393548808) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1567393550428) (:by |B1y7Rc-Zz) (:text |dissoc-in)
                      |j $ %{} :Leaf (:at 1567393551080) (:by |B1y7Rc-Zz) (:text |db)
                      |r $ %{} :Expr (:at 1567393551437) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1567393551690) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1567393556264) (:by |B1y7Rc-Zz) (:text |:processes)
                          |r $ %{} :Leaf (:at 1567393558410) (:by |B1y7Rc-Zz) (:text |op-data)
                  |R $ %{} :Leaf (:at 1567393559937) (:by |B1y7Rc-Zz) (:text |db)
        |shorten-content $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099848491) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |shorten-content)
              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |update-in)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:processes)
                      |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |v $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |process)
                      |r $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |assoc)
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |process)
                          |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:content)
                          |v $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
        |stderr $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099848491) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |stderr)
              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794382097) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |pid)
                              |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |data)
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:processes)
                          |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |pid)
                          |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:content)
                      |v $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |content)
                          |r $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |conj)
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |content)
                              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:type)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:stderr)
                                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:data)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |data)
        |stdout $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099848491) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |stdout)
              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099848491) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794375835) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |pid)
                              |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |data)
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:processes)
                          |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |pid)
                          |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:content)
                      |v $ %{} :Expr (:at 1539099848491) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |content)
                          |r $ %{} :Expr (:at 1539099848491) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |conj)
                              |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |content)
                              |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |{})
                                  |j $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:type)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:stdout)
                                  |r $ %{} :Expr (:at 1539099848491) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:data)
                                      |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099848491) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |app.updater.process)
            |r $ %{} :Expr (:at 1539099848491) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099848491) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099848491) (:by |root) (:text |schema)
                |r $ %{} :Expr (:at 1567393516058) (:by |B1y7Rc-Zz)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1567393516454) (:by |B1y7Rc-Zz) (:text |[])
                    |j $ %{} :Leaf (:at 1567393520271) (:by |B1y7Rc-Zz) (:text |medley.core)
                    |r $ %{} :Leaf (:at 1567393520959) (:by |B1y7Rc-Zz) (:text |:refer)
                    |v $ %{} :Expr (:at 1567393521153) (:by |B1y7Rc-Zz)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1567393521323) (:by |B1y7Rc-Zz) (:text |[])
                        |j $ %{} :Leaf (:at 1567393524028) (:by |B1y7Rc-Zz) (:text |dissoc-in)
    |app.updater.router $ %{} :FileEntry
      :defs $ {}
        |change $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |change)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:router)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.router)
    |app.updater.session $ %{} :FileEntry
      :defs $ {}
        |connect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |connect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |merge)
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema/session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |{})
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |disconnect $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |disconnect)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |update)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                  |v $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |session)
                          |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
        |remove-message $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1529231499908) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1529231499908) (:by |root) (:text |remove-message)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1529231506714) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1529231507936) (:by |root) (:text |update-in)
                  |j $ %{} :Leaf (:at 1529231509725) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1529231509958) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1529231510376) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1529231511756) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1529231512509) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1529231515700) (:by |root) (:text |:messages)
                  |v $ %{} :Expr (:at 1529231534326) (:by |root)
                    :data $ {}
                      |D $ %{} :Leaf (:at 1529231534991) (:by |root) (:text |fn)
                      |L $ %{} :Expr (:at 1529231535248) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231536189) (:by |root) (:text |messages)
                      |T $ %{} :Expr (:at 1529231516827) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1529231517957) (:by |root) (:text |dissoc)
                          |j $ %{} :Leaf (:at 1529231519342) (:by |root) (:text |messages)
                          |r $ %{} :Expr (:at 1529231521395) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1529231522521) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1529231524125) (:by |root) (:text |op-data)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.session)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |schema)
    |app.updater.user $ %{} :FileEntry
      :defs $ {}
        |log-in $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |log-in)
              |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |->)
                              |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:users)
                                  |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |vals)
                              |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |.to-list)
                              |x $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |find)
                                  |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |user)
                                      |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |and)
                                          |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |=)
                                              |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |username)
                                              |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:name)
                                                  |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |update-in)
                      |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |db)
                      |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |[])
                          |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:sessions)
                          |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |sid)
                      |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |fn)
                          |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |session)
                          |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |if)
                              |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |some?)
                                  |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |maybe-user)
                              |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |if)
                                  |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |md5)
                                          |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |password)
                                      |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:password)
                                          |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |assoc)
                                      |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:user-id)
                                      |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |maybe-user)
                                  |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |update)
                                      |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |session)
                                      |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:messages)
                                      |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |fn)
                                          |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |assoc)
                                              |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |messages)
                                              |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-id)
                                                  |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:text)
                                                      |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                        :data $ {}
                                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |str)
                                                          |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text "|\"Wrong password for ")
                                                          |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |username)
                              |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |update)
                                  |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |session)
                                  |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:messages)
                                  |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |fn)
                                      |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |messages)
                                      |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |assoc)
                                          |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |messages)
                                          |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-id)
                                          |v $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |{})
                                              |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:id)
                                                  |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |op-id)
                                              |r $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |:text)
                                                  |j $ %{} :Expr (:at 1629794330886) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |str)
                                                      |j $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text "|\"No user named: ")
                                                      |r $ %{} :Leaf (:at 1629794330886) (:by |B1y7Rc-Zz) (:text |username)
        |log-out $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |log-out)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |assoc-in)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |db)
                  |r $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                      |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:sessions)
                      |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |sid)
                      |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:user-id)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
        |sign-up $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
            :data $ {}
              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |defn)
              |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |sign-up)
              |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |db)
                  |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |sid)
                  |v $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-id)
                  |x $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-time)
              |v $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |username)
                              |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |password)
                          |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |maybe-user)
                          |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |find)
                              |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |vals)
                                  |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:users)
                                      |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |db)
                              |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |fn)
                                  |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |user)
                                  |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |=)
                                      |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |username)
                                      |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:name)
                                          |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |user)
                  |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |if)
                      |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |some?)
                          |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |maybe-user)
                      |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |update-in)
                          |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |[])
                              |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:sessions)
                              |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |sid)
                              |v $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:messages)
                          |v $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |fn)
                              |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |messages)
                              |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |assoc)
                                  |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |messages)
                                  |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |v $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:id)
                                          |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-id)
                                      |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:text)
                                          |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |str)
                                              |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text "|\"Name is taken: ")
                                              |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |username)
                      |v $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |->)
                          |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |db)
                          |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:sessions)
                                  |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |sid)
                                  |v $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:user-id)
                              |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-id)
                          |v $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |assoc-in)
                              |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |[])
                                  |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:users)
                                  |r $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-id)
                              |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |{})
                                  |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:id)
                                      |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |op-id)
                                  |r $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:name)
                                      |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |username)
                                  |v $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:nickname)
                                      |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |username)
                                  |x $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:password)
                                      |j $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |md5)
                                          |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |password)
                                  |y $ %{} :Expr (:at 1629794344958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |:avatar)
                                      |j $ %{} :Leaf (:at 1629794344958) (:by |B1y7Rc-Zz) (:text |nil)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.updater.user)
            |r $ %{} :Expr (:at 1500541255553) (:by nil)
              :data $ {}
                |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1500541255553) (:by nil)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.util)
                    |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |:refer)
                    |v $ %{} :Expr (:at 1500541255553) (:by nil)
                      :data $ {}
                        |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |[])
                        |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |find-first)
                |r $ %{} :Expr (:at 1513097118588) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1513097119283) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1513097121683) (:by |root) (:text ||md5)
                    |r $ %{} :Leaf (:at 1629794356537) (:by |B1y7Rc-Zz) (:text |:default)
                    |v $ %{} :Leaf (:at 1513097123766) (:by |root) (:text |md5)
    |app.updater.workflow $ %{} :FileEntry
      :defs $ {}
        |add-command $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099839573) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |add-command)
              |r $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794479531) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |{})
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
                              |r $ %{} :Leaf (:at 1553402391870) (:by |B1y7Rc-Zz) (:text |draft)
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |assoc-in)
                      |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:workflows)
                          |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
                          |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:commands)
                          |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                      |v $ %{} :Expr (:at 1553402395508) (:by |B1y7Rc-Zz)
                        :data $ {}
                          |D $ %{} :Leaf (:at 1553402396629) (:by |B1y7Rc-Zz) (:text |merge)
                          |L $ %{} :Leaf (:at 1553402398316) (:by |B1y7Rc-Zz) (:text |draft)
                          |T $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099839573) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:id)
                                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
        |create-workflow $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099839573) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |create-workflow)
              |r $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794441212) (:by |B1y7Rc-Zz) (:text |let)
                  |j $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-name)
                          |j $ %{} :Expr (:at 1629794442825) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1629794445516) (:by |B1y7Rc-Zz) (:text |:name)
                              |j $ %{} :Leaf (:at 1629794447973) (:by |B1y7Rc-Zz) (:text |op-data)
                      |j $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |base-dir)
                          |j $ %{} :Expr (:at 1629794449224) (:by |B1y7Rc-Zz)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:base-dir)
                              |j $ %{} :Leaf (:at 1629794451077) (:by |B1y7Rc-Zz) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |assoc-in)
                      |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:workflows)
                          |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                      |v $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |merge)
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |schema/workflow)
                          |r $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |{})
                              |j $ %{} :Expr (:at 1539099839573) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:id)
                                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                              |r $ %{} :Expr (:at 1539099839573) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:name)
                                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-name)
                              |v $ %{} :Expr (:at 1539099839573) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:base-dir)
                                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |base-dir)
                              |x $ %{} :Expr (:at 1553495497513) (:by |B1y7Rc-Zz)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1553495499669) (:by |B1y7Rc-Zz) (:text |:commands)
                                  |j $ %{} :Expr (:at 1553495499958) (:by |B1y7Rc-Zz)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1553495625990) (:by |B1y7Rc-Zz) (:text |{})
                                      |j $ %{} :Expr (:at 1553495627129) (:by |B1y7Rc-Zz)
                                        :data $ {}
                                          |D $ %{} :Leaf (:at 1553495630238) (:by |B1y7Rc-Zz) (:text |op-id)
                                          |T $ %{} :Expr (:at 1553495500944) (:by |B1y7Rc-Zz)
                                            :data $ {}
                                              |T $ %{} :Leaf (:at 1553495502389) (:by |B1y7Rc-Zz) (:text |merge)
                                              |j $ %{} :Leaf (:at 1553495504747) (:by |B1y7Rc-Zz) (:text |schema/command)
                                              |r $ %{} :Expr (:at 1553495508176) (:by |B1y7Rc-Zz)
                                                :data $ {}
                                                  |T $ %{} :Leaf (:at 1553495509848) (:by |B1y7Rc-Zz) (:text |{})
                                                  |j $ %{} :Expr (:at 1553495510147) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553495510842) (:by |B1y7Rc-Zz) (:text |:id)
                                                      |j $ %{} :Leaf (:at 1553495517554) (:by |B1y7Rc-Zz) (:text |op-id)
                                                  |r $ %{} :Expr (:at 1553495518211) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553495519136) (:by |B1y7Rc-Zz) (:text |:title)
                                                      |j $ %{} :Leaf (:at 1553495534516) (:by |B1y7Rc-Zz) (:text |workflow-name)
                                                  |v $ %{} :Expr (:at 1553495536092) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553495542852) (:by |B1y7Rc-Zz) (:text |:path)
                                                      |j $ %{} :Leaf (:at 1553495547505) (:by |B1y7Rc-Zz) (:text |base-dir)
                                                  |x $ %{} :Expr (:at 1553495548659) (:by |B1y7Rc-Zz)
                                                    :data $ {}
                                                      |T $ %{} :Leaf (:at 1553495647309) (:by |B1y7Rc-Zz) (:text |:code)
                                                      |j $ %{} :Leaf (:at 1553495562161) (:by |B1y7Rc-Zz) (:text "|\"echo nothing yet")
        |edit-command $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099839573) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |edit-command)
              |r $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794497740) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
                              |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |command-id)
                              |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |changes)
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:workflows)
                          |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
                          |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:commands)
                          |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |command-id)
                      |v $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |command)
                          |r $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |command)
                              |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |changes)
        |edit-workflow $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099839573) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |edit-workflow)
              |r $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |new-workflow)
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:workflows)
                          |r $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:id)
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |new-workflow)
                      |v $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow)
                          |r $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |merge)
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow)
                              |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |new-workflow)
        |remove-command $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099839573) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |remove-command)
              |r $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1629794491248) (:by |B1y7Rc-Zz) (:text |let-sugar)
                  |j $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
                              |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |command-id)
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |update-in)
                      |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                      |r $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:workflows)
                          |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
                          |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:commands)
                      |v $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |commands)
                          |r $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |dissoc)
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |commands)
                              |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |command-id)
        |remove-workflow $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099839573) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |remove-workflow)
              |r $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                  |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |sid)
                  |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-id)
                  |x $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-time)
              |v $ %{} :Expr (:at 1539099839573) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |let)
                  |j $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
                          |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |op-data)
                  |r $ %{} :Expr (:at 1539099839573) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |update)
                      |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |db)
                      |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:workflows)
                      |v $ %{} :Expr (:at 1539099839573) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflows)
                          |r $ %{} :Expr (:at 1539099839573) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |dissoc)
                              |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflows)
                              |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |workflow-id)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1539099839573) (:by |root)
          :data $ {}
            |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |app.updater.workflow)
            |r $ %{} :Expr (:at 1539099839573) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099839573) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |app.schema)
                    |r $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099839573) (:by |root) (:text |schema)
    |app.util $ %{} :FileEntry
      :defs $ {}
        |find-first $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1500541255553) (:by nil)
            :data $ {}
              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |find-first)
              |r $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |f)
                  |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |xs)
              |v $ %{} :Expr (:at 1500541255553) (:by nil)
                :data $ {}
                  |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |reduce)
                  |j $ %{} :Expr (:at 1500541255553) (:by nil)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |fn)
                      |j $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |_)
                          |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |x)
                      |r $ %{} :Expr (:at 1500541255553) (:by nil)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |when)
                          |j $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |f)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |x)
                          |r $ %{} :Expr (:at 1500541255553) (:by nil)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |reduced)
                              |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |x)
                  |r $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |nil)
                  |v $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |xs)
        |join-path $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099259093) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |join-path)
              |r $ %{} :Expr (:at 1539099259093) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |xs)
                  |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |ys)
              |v $ %{} :Expr (:at 1539099259093) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1539099259093) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |=)
                      |j $ %{} :Expr (:at 1539099259093) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |first)
                          |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |ys)
                      |r $ %{} :Leaf (:at 1539099259093) (:by |root) (:text ||/)
                  |r $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |ys)
                  |v $ %{} :Expr (:at 1539099259093) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1539099259093) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099259093) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |absolute?)
                              |j $ %{} :Expr (:at 1539099259093) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |=)
                                  |j $ %{} :Expr (:at 1539099259093) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |first)
                                      |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |xs)
                                  |r $ %{} :Leaf (:at 1539099259093) (:by |root) (:text ||/)
                          |j $ %{} :Expr (:at 1539099259093) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |new-path)
                              |j $ %{} :Expr (:at 1539099259093) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |join-segments)
                                  |j $ %{} :Expr (:at 1539099259093) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |[])
                                  |r $ %{} :Expr (:at 1539099259093) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |concat)
                                      |j $ %{} :Expr (:at 1539099259093) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629786419812) (:by |B1y7Rc-Zz) (:text |.split)
                                          |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |xs)
                                          |r $ %{} :Leaf (:at 1539099259093) (:by |root) (:text ||/)
                                      |r $ %{} :Expr (:at 1539099259093) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1629786421674) (:by |B1y7Rc-Zz) (:text |.split)
                                          |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |ys)
                                          |r $ %{} :Leaf (:at 1539099259093) (:by |root) (:text ||/)
                      |r $ %{} :Expr (:at 1539099259093) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |if)
                          |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |absolute?)
                          |r $ %{} :Expr (:at 1539099259093) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |str)
                              |j $ %{} :Leaf (:at 1539099259093) (:by |root) (:text ||/)
                              |r $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |new-path)
                          |v $ %{} :Leaf (:at 1539099259093) (:by |root) (:text |new-path)
        |join-segments $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099266193) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |join-segments)
              |r $ %{} :Expr (:at 1539099266193) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |acc)
                  |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |xs)
              |v $ %{} :Expr (:at 1539099266193) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |if)
                  |j $ %{} :Expr (:at 1539099266193) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |empty?)
                      |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |xs)
                  |r $ %{} :Expr (:at 1539099266193) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1629786397653) (:by |B1y7Rc-Zz) (:text |.join-str)
                      |r $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |acc)
                      |v $ %{} :Leaf (:at 1629786400816) (:by |B1y7Rc-Zz) (:text "|\"/")
                  |v $ %{} :Expr (:at 1539099266193) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |let)
                      |j $ %{} :Expr (:at 1539099266193) (:by |root)
                        :data $ {}
                          |T $ %{} :Expr (:at 1539099266193) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |cursor)
                              |j $ %{} :Expr (:at 1539099266193) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |first)
                                  |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |xs)
                          |j $ %{} :Expr (:at 1539099266193) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |next-acc)
                              |j $ %{} :Expr (:at 1539099266193) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |cond)
                                  |j $ %{} :Expr (:at 1539099266193) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1539099266193) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |cursor)
                                          |r $ %{} :Leaf (:at 1539099266193) (:by |root) (:text ||.)
                                      |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |acc)
                                  |r $ %{} :Expr (:at 1539099266193) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1539099266193) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |cursor)
                                          |r $ %{} :Leaf (:at 1539099266193) (:by |root) (:text ||..)
                                      |j $ %{} :Expr (:at 1539099266193) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |butlast)
                                          |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |acc)
                                  |v $ %{} :Expr (:at 1539099266193) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Expr (:at 1539099266193) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |=)
                                          |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |cursor)
                                          |r $ %{} :Leaf (:at 1539099266193) (:by |root) (:text ||)
                                      |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |acc)
                                  |x $ %{} :Expr (:at 1539099266193) (:by |root)
                                    :data $ {}
                                      |T $ %{} :Leaf (:at 1629786404446) (:by |B1y7Rc-Zz) (:text |true)
                                      |j $ %{} :Expr (:at 1539099266193) (:by |root)
                                        :data $ {}
                                          |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |conj)
                                          |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |acc)
                                          |r $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |cursor)
                      |r $ %{} :Expr (:at 1539099266193) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |recur)
                          |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |next-acc)
                          |r $ %{} :Expr (:at 1539099266193) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |rest)
                              |j $ %{} :Leaf (:at 1539099266193) (:by |root) (:text |xs)
        |log-js! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099900129) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |log-js!)
              |r $ %{} :Expr (:at 1539099900129) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |&)
                  |j $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |args)
              |v $ %{} :Expr (:at 1539099900129) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |apply)
                  |j $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |js/console.log)
                  |r $ %{} :Expr (:at 1539099900129) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |map)
                      |j $ %{} :Expr (:at 1539099900129) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099900129) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |x)
                          |r $ %{} :Expr (:at 1539099900129) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |if)
                              |j $ %{} :Expr (:at 1539099900129) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |coll?)
                                  |j $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |x)
                              |r $ %{} :Expr (:at 1539099900129) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |clj->js)
                                  |j $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |x)
                              |v $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |x)
                      |r $ %{} :Leaf (:at 1539099900129) (:by |root) (:text |args)
        |map-val $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099274058) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |map-val)
              |r $ %{} :Expr (:at 1539099274058) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |f)
                  |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |xs)
              |v $ %{} :Expr (:at 1539099274058) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |assert)
                  |j $ %{} :Expr (:at 1539099274058) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |or)
                      |j $ %{} :Expr (:at 1539099274058) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |map?)
                          |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |xs)
                      |r $ %{} :Expr (:at 1539099274058) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |seq?)
                          |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |xs)
                  |r $ %{} :Leaf (:at 1539099274058) (:by |root) (:text "||map-val deals maps")
              |x $ %{} :Expr (:at 1539099274058) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |->>)
                  |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |xs)
                  |r $ %{} :Expr (:at 1539099274058) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |map)
                      |j $ %{} :Expr (:at 1539099274058) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099274058) (:by |root)
                            :data $ {}
                              |T $ %{} :Expr (:at 1539099274058) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |[])
                                  |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |k)
                                  |r $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |x)
                          |r $ %{} :Expr (:at 1539099274058) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |k)
                              |r $ %{} :Expr (:at 1539099274058) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |f)
                                  |j $ %{} :Leaf (:at 1539099274058) (:by |root) (:text |x)
        |map-with-index $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099280801) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |map-with-index)
              |r $ %{} :Expr (:at 1539099280801) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |f)
                  |j $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |xs)
              |v $ %{} :Expr (:at 1539099280801) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |->>)
                  |j $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |xs)
                  |r $ %{} :Expr (:at 1539099280801) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |map-indexed)
                      |j $ %{} :Expr (:at 1539099280801) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |fn)
                          |j $ %{} :Expr (:at 1539099280801) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |idx)
                              |j $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |x)
                          |r $ %{} :Expr (:at 1539099280801) (:by |root)
                            :data $ {}
                              |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |[])
                              |j $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |idx)
                              |r $ %{} :Expr (:at 1539099280801) (:by |root)
                                :data $ {}
                                  |T $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |f)
                                  |j $ %{} :Leaf (:at 1539099280801) (:by |root) (:text |x)
        |test-join-path! $ %{} :CodeEntry (:doc |)
          :code $ %{} :Expr (:at 1539099287213) (:by |root)
            :data $ {}
              |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |defn)
              |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |test-join-path!)
              |r $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
              |v $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |println)
                  |j $ %{} :Expr (:at 1539099287213) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |pr-str)
                      |j $ %{} :Expr (:at 1539099287213) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |join-path)
                          |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||)
                          |r $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||)
              |x $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |println)
                  |j $ %{} :Expr (:at 1539099287213) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |pr-str)
                      |j $ %{} :Expr (:at 1539099287213) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |join-path)
                          |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||/)
                          |r $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||)
              |y $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |println)
                  |j $ %{} :Expr (:at 1539099287213) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |pr-str)
                      |j $ %{} :Expr (:at 1539099287213) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |join-path)
                          |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||)
                          |r $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||/)
              |yT $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |println)
                  |j $ %{} :Expr (:at 1539099287213) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |pr-str)
                      |j $ %{} :Expr (:at 1539099287213) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |join-path)
                          |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||a)
                          |r $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||b)
              |yj $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |println)
                  |j $ %{} :Expr (:at 1539099287213) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |pr-str)
                      |j $ %{} :Expr (:at 1539099287213) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |join-path)
                          |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||a)
                          |r $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||../b)
              |yr $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |println)
                  |j $ %{} :Expr (:at 1539099287213) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |pr-str)
                      |j $ %{} :Expr (:at 1539099287213) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |join-path)
                          |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||a)
                          |r $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||./b)
              |yv $ %{} :Expr (:at 1539099287213) (:by |root)
                :data $ {}
                  |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |println)
                  |j $ %{} :Expr (:at 1539099287213) (:by |root)
                    :data $ {}
                      |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |pr-str)
                      |j $ %{} :Expr (:at 1539099287213) (:by |root)
                        :data $ {}
                          |T $ %{} :Leaf (:at 1539099287213) (:by |root) (:text |join-path)
                          |j $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||a/)
                          |r $ %{} :Leaf (:at 1539099287213) (:by |root) (:text ||./b)
      :ns $ %{} :CodeEntry (:doc |)
        :code $ %{} :Expr (:at 1500541255553) (:by nil)
          :data $ {}
            |T $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |ns)
            |j $ %{} :Leaf (:at 1500541255553) (:by |root) (:text |app.util)
            |r $ %{} :Expr (:at 1539099308829) (:by |root)
              :data $ {}
                |T $ %{} :Leaf (:at 1539099308829) (:by |root) (:text |:require)
                |j $ %{} :Expr (:at 1539099308829) (:by |root)
                  :data $ {}
                    |T $ %{} :Leaf (:at 1539099308829) (:by |root) (:text |[])
                    |j $ %{} :Leaf (:at 1539099308829) (:by |root) (:text |clojure.string)
                    |r $ %{} :Leaf (:at 1539099308829) (:by |root) (:text |:as)
                    |v $ %{} :Leaf (:at 1539099308829) (:by |root) (:text |string)
  :users $ {}
    |B1y7Rc-Zz $ {} (:avatar nil) (:id |B1y7Rc-Zz) (:name |chen) (:nickname |chen) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)
    |root $ {} (:avatar nil) (:id |root) (:name |root) (:nickname |root) (:password |d41d8cd98f00b204e9800998ecf8427e) (:theme :star-trail)

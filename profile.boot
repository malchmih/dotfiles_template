(require
 'boot.repl)

(reset! boot.repl/*default-dependencies*
        '[[org.clojure/tools.nrepl "0.2.11" :exclusions [[org.clojure/clojure]]]
          [cider/cider-nrepl "0.10.0-SNAPSHOT"]])
(swap! boot.repl/*default-dependencies*
       concat '[[refactor-nrepl "2.0.0-SNAPSHOT"]])
(swap! boot.repl/*default-middleware*
       conj 'cider.nrepl/cider-middleware)
(swap! boot.repl/*default-middleware*
       conj 'refactor-nrepl.middleware/wrap-refactor)

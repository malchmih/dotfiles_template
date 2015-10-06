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

(set-env! :dependencies '[[org.clojure/clojure "1.7.0" :scope "test"]
                          [org.clojure/clojurescript "1.7.122" :scope "test"]
                          [org.clojure/tools.namespace "0.2.11" :scope "test"]
                          [boot-deps "0.1.6" :scope "test"]
                          [hendrick/boot-medusa "0.0.3" :scope "test"]])
(require '[boot-deps :refer [ancient]]
         '[hendrick.boot-medusa :refer [medusa]])

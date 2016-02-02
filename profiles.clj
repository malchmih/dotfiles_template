{:user {:plugins [[lein-ancient "0.6.8"]
                  [lein-exec "0.3.6"]
                  [lein-try "0.4.3"]
                  [jonase/eastwood "0.2.3"]
                  [com.jakemccrary/lein-test-refresh "0.12.0"]
                  [lein-kibit "0.1.2"]
                  [lein-bikeshed "0.2.0"]
                  [lein-cljfmt "0.3.0"]
                  [lein-hiera "0.9.5"]
                  [venantius/yagni "0.1.4"]
                  [quickie "0.4.1"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.12"]]
        :aliases {"anc" ^{:doc "Check all dependencies for updates"}
                  ["do"
                   ["ancient" "check-profiles" ":all" ":check-clojure"]
                   ["ancient" ":all" ":check-clojure"]]
                  "anc-up" ^{:doc "Upgrade all dependencies interactively"}
                  ["do"
                   ["ancient" "upgrade" ":interactive" ":all" ":check-clojure"]
                   ["ancient" "upgrade-profiles" ":interactive" ":all" ":check-clojure"]]
                  "dev" ^{:doc "Run development repl"}
                  ["do" "clean" ["repl" ":headless"]]}}
 :repl {:plugins [[cider/cider-nrepl "0.11.0-SNAPSHOT"]
                  [refactor-nrepl "2.0.0-SNAPSHOT"]]}}

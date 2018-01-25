{:user {:plugins [[lein-ancient "0.6.15"]
                  [lein-exec "0.3.7"]
                  [lein-try "0.4.3"]
                  [jonase/eastwood "0.2.5"]
                  [com.jakemccrary/lein-test-refresh "0.22.0"]
                  [lein-bikeshed "0.5.1"]
                  [lein-cljfmt "0.5.7"]
                  [lein-count "1.0.8"]
                  [lein-hiera "1.0.0"]
                  [lein-kibit "0.1.6"]
                  [venantius/yagni "0.1.4"]
                  [quickie "0.4.2"]
                  [venantius/ultra "0.5.2"]]
        :dependencies [[fipp "0.6.12"]
                       [mvxcvi/puget "1.0.2"]
                       [org.clojure/tools.nrepl "0.2.13"]]
        :aliases {"anc" ^{:doc "Check all dependencies for updates"}
                  ["do"
                   ["ancient" "check-profiles" ":all" ":check-clojure"]
                   ["ancient" ":all" ":check-clojure"]]
                  "anc-up" ^{:doc "Upgrade all dependencies interactively"}
                  ["do"
                   ["ancient" "upgrade" ":interactive" ":all" ":check-clojure"]
                   ["ancient" "upgrade-profiles" ":interactive" ":all" ":check-clojure"]]
                  "anc-snapshot" ^{:doc "Check all dependencies for updates, allow snapshots"}
                  ["ancient" ":allow-all" ":all" ":check-clojure"]
                  "dev" ^{:doc "Run development repl"}
                  ["repl" ":headless"]
                  "dev-clean" ^{:doc "Run fully clean development repl"}
                  ["-U" "do" "clean" ["repl" ":headless"]]
                  "deps-dev" ^{:doc "Run lein deps with repl profile"}
                  ["-U" "with-profile" "repl" "deps"]}}
 :repl {:plugins [[cider/cider-nrepl "0.17.0-SNAPSHOT"]
                  [refactor-nrepl "2.4.0-SNAPSHOT"]]}}

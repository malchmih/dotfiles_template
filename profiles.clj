{:user {:plugins [[lein-ancient "0.6.15"]
                  [lein-exec "0.3.7"]
                  [lein-try "0.4.3"]
                  [jonase/eastwood "0.3.3"]
                  [com.jakemccrary/lein-test-refresh "0.23.0"]
                  [lein-bikeshed "0.5.1"]
                  [lein-cljfmt "0.6.1"]
                  [lein-count "1.0.9"]
                  [lein-hiera "1.0.0"]
                  [lein-kibit "0.1.6"]
                  [venantius/yagni "0.1.6"]
                  [quickie "0.4.2"]
                  [venantius/ultra "0.5.2"]]
        :dependencies [[fipp "0.6.13"]
                       [mvxcvi/puget "1.0.2"]
                       [nrepl "0.4.5"]]
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
 :repl {:plugins [[cider/cider-nrepl "0.19.0-SNAPSHOT"]
                  [refactor-nrepl "2.4.0"]]}}

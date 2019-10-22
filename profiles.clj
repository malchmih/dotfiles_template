{:user {:plugins [[lein-ancient "0.6.15"]
                  [jonase/eastwood "0.3.6"]
                  [lein-bikeshed "0.5.2"]
                  [lein-cljfmt "0.6.4"]
                  [lein-count "1.0.9"]
                  [lein-hiera "1.1.0"]
                  [lein-kibit "0.1.7"]]
        :dependencies [[criterium "0.4.5"]
                       [nrepl "0.6.0"]]
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
 :repl {:plugins [[cider/cider-nrepl "0.23.0-SNAPSHOT"]
                  [refactor-nrepl "2.5.0-SNAPSHOT"]]}}

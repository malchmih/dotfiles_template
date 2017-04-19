{:user {:plugins [[lein-ancient "0.6.10"]
                  [lein-exec "0.3.6"]
                  [lein-try "0.4.3"]
                  [jonase/eastwood "0.2.3"]
                  [com.jakemccrary/lein-test-refresh "0.19.0"]
                  [lein-kibit "0.1.3"]
                  [lein-bikeshed "0.4.1"]
                  [lein-cljfmt "0.5.6"]
                  [lein-hiera "0.9.5"]
                  [venantius/yagni "0.1.4"]
                  [quickie "0.4.2"]
                  [venantius/ultra "0.5.1"]]
        :dependencies [[org.clojure/tools.nrepl "0.2.13"]]
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
                  ["-U" "do" "clean" ["repl" ":headless"]]}}
 :repl {:plugins [[cider/cider-nrepl "0.15.0-SNAPSHOT"]
                  ;; [refactor-nrepl "2.3.0-SNAPSHOT"]
                  [refactor-nrepl "2.3.0"]
                  ]}}

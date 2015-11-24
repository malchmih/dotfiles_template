{:user {:plugins [[lein-ancient "0.6.8"]
                  [lein-exec "0.3.5"]
                  [lein-try "0.4.3"]
                  [jonase/eastwood "0.2.2"]
                  [com.jakemccrary/lein-test-refresh "0.11.0"]
                  [lein-kibit "0.1.2"]
                  [lein-bikeshed "0.2.0"]
                  [lein-cljfmt "0.3.0"]
                  [lein-hiera "0.9.5"]
                  [quickie "0.4.1"]]
        :dependencies [[pjstadig/humane-test-output "0.7.0"]
                       [org.clojure/tools.nrepl "0.2.12"]]
        :aliases {"anc" ^{:doc "Check all dependencies for updates"}
                  ["do"
                   ["ancient" ":all"]
                   ["ancient" "check-profiles" ":all"]]
                  "anc-up" ^{:doc "Upgrade all dependencies interactively"}
                  ["do"
                   ["ancient" "upgrade" ":interactive" ":all"]
                   ["ancient" "upgrade-profiles" ":interactive" ":all"]]
                  "dev" ^{:doc "Run development repl"}
                  [["repl" ":headless"]]}
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}
 :repl {:plugins [[cider/cider-nrepl "0.10.0-SNAPSHOT"]
                  [refactor-nrepl "2.0.0-SNAPSHOT"]]}}

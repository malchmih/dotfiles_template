{:user {:plugins [[lein-ancient "0.6.7"]
                  [lein-exec "0.3.5"]
                  [lein-try "0.4.3"]
                  [jonase/eastwood "0.2.1"]
                  [cider/cider-nrepl "0.10.0-SNAPSHOT"]
                  [refactor-nrepl "2.0.0-SNAPSHOT"]
                  [com.jakemccrary/lein-test-refresh "0.11.0"]
                  [lein-kibit "0.1.2"]
                  [jonase/eastwood "0.2.1"]
                  [lein-bikeshed "0.2.0"]
                  [lein-cljfmt "0.3.0"]
                  [lein-hiera "0.9.0"]
                  [quickie "0.4.1"]]
        :dependencies [[pjstadig/humane-test-output "0.7.0"]
                       [org.clojure/tools.nrepl "0.2.11"]]
        :aliases {"anc" ["do"
                         ["ancient" ":all"]
                         ["ancient" "profiles" ":all"]]
                  "anc-up" ["do"
                            ["ancient" "upgrade" ":interactive" ":all"]
                            ["ancient" "upgrade-profiles" ":interactive" ":all"]]}
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}


{:user {:plugins [[lein-ancient "0.5.5"]
                  [lein-exec "0.3.4"]
                  [lein-try "0.4.3"]
                  [jonase/eastwood "0.1.4"]
                  [com.jakemccrary/lein-test-refresh "0.5.4"]]
        :dependencies [[pjstadig/humane-test-output "0.6.0"]]
        :aliases {"anc" ["do" ["ancient" ":all"] ["ancient" "profiles" ":all"]]}
        :injections [(require 'pjstadig.humane-test-output)
                     (pjstadig.humane-test-output/activate!)]}}


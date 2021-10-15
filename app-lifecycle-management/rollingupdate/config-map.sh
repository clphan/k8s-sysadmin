kubectl create configmap <config-name> --from-literal=<key>=<value>

kubectl create configmap web-config --from-literal=APP_COLOR=blue \
                                    --from-literal=APP_MOD=prod \
                                    --from-literal=APP_TIER=web

kubectl create configmap <config-map> --from-file=<path-to-file>

kubectl create configmap \
  app-config --from-file=app_config.properties


sudo gitlab-runner register \
     --config toml/out-config-k8s.toml \
     --template-config toml/config.toml \
     --non-interactive \
     --url https://${BASE_CICD_URL_WITHOUT_HTTP} \
     --registration-token 9ThKnH_vFt3pLzdeg8yn \
     ## add this if you use self hosted gitlab cicd with self signed certificate
     #--tls-ca-file ${TLS_CA_FILE} # example /home/masykurm/k8s-runner/cert/my-gitlab-host.crt \
     ## /end of self signed certificate configuration
     --name ${RUNNER_NAME} \
     --tag-list kubernetes \
     --locked \
     --paused \
     --executor kubernetes \

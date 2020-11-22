# before executing this, copy token that generated after registering kubernetes runner on toml/config-k8s.toml
# replace token value in yaml/gitlab-runner-config.yaml with that token value
kubectl apply -f yaml/gitlab-runner-config.yaml

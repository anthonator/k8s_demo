import Config

config :k8s, K8S.Endpoint, http: [port: 4000]

config :k8s, K8S.Endpoint, server: true

config :phoenix, :json_library, Jason

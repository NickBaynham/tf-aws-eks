###
# Install the Metrics Server using the Helm provider
###
resource "helm_release" "metrics_server" {
  # Name of the release in the README.md
  name       = "metrics-server"

  # Name of the chart to install
  repository = "https://kubernetes-sigs.github.io/metrics-server/"

  # Version of the chart to use
  chart      = "metrics-server"

  # Wait for the Kubernetes Dashboard and Kubernetes namespace to be created
  depends_on = [helm_release.kubernetes_dashboard, kubernetes_namespace.kubernetes_dashboard]

  # Set the namespace to install the release into
  namespace  = kubernetes_namespace.kubernetes_dashboard.metadata[0].name

  # Recent updates to the Metrics Server do not work with self-signed certificates by default.
  # Since Docker For Desktop uses such certificates, you’ll need to allow insecure TLS
  set {
    name  = "args"
    value = "{--kubelet-insecure-tls=true}"
  }

  # Wait for the release to be deployed
  wait = true
}
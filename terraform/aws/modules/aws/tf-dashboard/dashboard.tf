###
# Install the Kubernetes Dashboard using the Helm provider
###
resource "helm_release" "kubernetes_dashboard" {
  # Name of the release in the cluster
  name       = "kubernetes-dashboard"

  # Name of the chart to install
  repository = "https://kubernetes.github.io/dashboard/"

  # Version of the chart to use
  chart      = "kubernetes-dashboard"

  # Wait for the Kubernetes namespace to be created
  depends_on = [kubernetes_namespace.kubernetes_dashboard]

  # Set the namespace to install the release into
  namespace  = kubernetes_namespace.kubernetes_dashboard.metadata[0].name

  # Set service type to LoadBalancer
  set {
    name  = "service.type"
    value = "LoadBalancer"
  }

  # Set service external port to 9080
  set {
    name  = "service.externalPort"
    value = "9080"
  }

  # Set protocol to HTTP (not HTTPS)
  set {
    name  = "protocolHttp"
    value = "true"
  }

  # Enable insecure login (no authentication)
  set {
    name  = "enableInsecureLogin"
    value = "true"
  }

  # Enable cluster read only role (no write access) for the dashboard user
  set {
    name  = "rbac.clusterReadOnlyRole"
    value = "true"
  }

  # Enable metrics scraper (required for the CPU and memory usage graphs)
  set {
    name  = "metricsScraper.enabled"
    value = "true"
  }

  # Wait for the release to be deployed
  wait = true
}
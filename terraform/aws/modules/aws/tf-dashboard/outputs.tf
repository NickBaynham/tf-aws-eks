# Output metadata of the Kubernetes Dashboard release
output "kubernetes_dashboard_service_metadata" {
  value = helm_release.kubernetes_dashboard.metadata
}

# Output metadata of the Metrics Server release
output "metrics_server_service_metadata" {
  value = helm_release.metrics_server.metadata
}

# Output the URL of the Kubernetes Dashboard
output "kubernetes_dashboard_url" {
  value = "http://localhost:9080"
}
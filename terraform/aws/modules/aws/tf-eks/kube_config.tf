resource "null_resource" "kubectl" {
  provisioner "local-exec" {
    command = "aws eks --region ${var.target_region} update-kubeconfig --name ${var.cluster_name}"
  }
}
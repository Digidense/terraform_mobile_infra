module "cluster_modules" {
  source                      = "git::https://github.com/Digidense/terraform_module.git//eks?ref=v3.0.0"
  role_name                   = var.role_name
  node_attachment_name        = var.node_attachment_name
  eks_cluster_attachment_name = var.eks_cluster_attachment_name
  eks_cluster_name            = var.eks_cluster_name
  addons_versions             = var.addons_versions
  node_group_name             = var.node_group_name
  cluster_version             = var.cluster_version
  desired_size                = var.desired_size
  max_size                    = var.max_size
  mix_size                    = var.mix_size
  
}

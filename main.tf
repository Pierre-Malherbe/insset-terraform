module "instance_backend" {
  source        = "./modules/instances"
  nom_instance  = "backend"
  instance_type = "e2-micro"
  network_name  = "backendnetwork"
}

module "instance_frontend" {
  source        = "./modules/instances"
  nom_instance  = "front"
  instance_type = "e2-micro"
  network_name  = "frontendnetworkk"
}
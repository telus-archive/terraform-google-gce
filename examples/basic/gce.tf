module "gce" {
  source  = "git::ssh://git@github.com/telus/terraform-google-gce"
  name = "gce"
  project = "gce"
}

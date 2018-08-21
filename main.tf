//provider "google" {
//  region = "${var.region}"
//}

resource "google_compute_instance" "default" {
  project      = "${var.project}"
  name         = "${var.name}"
  machine_type = "${var.machine_type}"
  zone         = "${var.zone}"

  tags = "${var.tags}"

  boot_disk {
    initialize_params {
      image = "${var.image}"
    }
  }

  scratch_disk {}

  network_interface {
    network = "${var.network}"

    access_config {}
  }

  allow_stopping_for_update = "${var.allow_stopping_for_update}"
  can_ip_forward = "${var.can_ip_forward}"
  create_timeout = "${var.create_timeout}"
  description = "${var.description}"
  deletion_protection = "${var.deletion_protection}"

  metadata = "${var.metadata}"
  metadata_startup_script = "${var.metadata_startup_script}"

  service_account {
    scopes = "${var.scopes}"
  }
}

resource "google_compute_firewall" "default" {
  project = "${var.project}"
  name    = "${var.name}-firewall"
  network = "${var.network}"

  allow {
    protocol = "${var.protocol}"
    ports    = "${var.ports}"
  }
}

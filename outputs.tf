output "instance_id" {
  description = "The gce instance id"
  value = "${google_compute_instance.gce.instance_id}"
}

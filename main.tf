provider “google” {
#credentials = file(“/root/secret/hostbread-d44243ebddf5.json”)
project = “Learn project”
region = “us-central1”
zone = “us-central1-c”
}

resource “google_compute_instance” “vm_instance” {
name = “new-tf-vm”
machine_type = “f1-micro”

boot_disk {
initialize_params {
image = “debian-cloud/debian-9”
}
}

network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

}

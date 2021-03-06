provider "google" {
credentials = file("/learn-project-vmkey.json")
project = "Learn project"
#region = "us-central1"
zone = "us-central1-a"
}

resource "google_compute_instance" "vm_instance" {
name = "new-tf-vm"
machine_type = "f1-micro"

boot_disk {
initialize_params {
image = "debian-cloud/debian-9"
}
}

network_interface {
    network = "default"

    access_config {
      // Ephemeral IP
    }
  }

}

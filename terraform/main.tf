# 1) Compute Engine VM
resource "google_compute_instance" "vm_instance" {
	project = var.project_id
	name = var.machine_name
	machine_type = var.machine_type
    zone = var.zone
	boot_disk {
		initialize_params {
			image = "centos-stream-9"
		}
		}

	network_interface {
		network = var.network
		subnetwork = var.subnetwork
		access_config {
		}	
	}
	
	tags = ["ssh", "devops-course"]
	
}

# 2) Cloud Storage bucket

resource "google_storage_bucket" "bucket" {
  name          = var.bucket_name
  location      = var.region       
  force_destroy = true
  uniform_bucket_level_access = true

}

# 3) BigQuery dataset

resource "google_bigquery_dataset" "dataset" {
  dataset_id = var.dataset_id
  location   = var.zone

}




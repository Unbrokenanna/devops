terraform {
  backend "gcs" {
    bucket = "remote_state_bucket_af"   
    prefix = "terraform"             
  }
}
resource "google_container_node_pool" "windows_pool" {
  name               = "windows-pool"
  project            = google_container_cluster.dyson_cluster.project
  cluster            = google_container_cluster.dyson_cluster.name
  location           = google_container_cluster.dyson_cluster.location

  node_config {
    machine_type = "e2-standard-4"
    image_type   = "WINDOWS_LTSC" # Or WINDOWS_SAC for new features.
  }

  depends_on = [google_container_cluster.dyson_cluster]
}

resource "google_container_node_pool" "windows_pool" {
  name               = "windows-pool"
  project            = google_container_cluster.dyson_cluster.project
  cluster            = google_container_cluster.dyson_cluster.name
  location           = google_container_cluster.dyson_cluster.location
  node_count         = 2
  node_config {
    machine_type = "e2-standard-4"
    image_type   = "WINDOWS_LTSC" # Or WINDOWS_SAC for new features.
  }
  depends_on = [google_container_cluster.dyson_cluster]
}


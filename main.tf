terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "~> 2.4"
    }
  }
}

resource "local_file" "transcoder_output" {
  filename = "${path.module}/transcoder_output.env"
  content  = <<-EOT
# OTT Video Transcoder Environment
APP_NAME=media-encoder
MAX_BITRATE=4K
IMAGE=video-encoder:1.0
K8S_SERVICE_NODEPORT=30097
STATUS=READY
EOT
}

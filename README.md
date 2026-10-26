# Media Encoder Microservice Stack

Distributed media transcoding microservice stack for an on-demand OTT video streaming platform continuous delivery pipeline on Kubernetes.

## Case Study Tasks

### 1. Git
- Repository: `media-encoder`
- Branch: `release-v5.0`
- Config: `transcode.conf` with `MAX_BITRATE=4K`
- Merge: Merged to `main`
- Tag: `v5.0.0-final`

### 2. Jira
- Tickets: Transition `STREAM-401` and `STREAM-402` to `Done`
- Sprint: Complete active sprint `Sprint-Video-Encoder`
- Reports: Check burndown chart

### 3. Jenkins
- Declarative Pipeline with stages:
  - `Source Fetch`
  - `Media Linting`
  - `Build Transcoder`

### 4. Docker
- Image: `video-encoder:1.0` built from `alpine`
- Prints: `"Transcoder Engine Ready"`
- Port Mapping: `8087:80` (detached)
- Verification: `docker ps`

### 5. Kubernetes (K8s)
- Deployment: 2 replicas (`image: nginx:alpine`, label `app: transcoder`)
- Service: NodePort exposed on port `30097`
- Verification: `kubectl get pods -l app=transcoder`

### 6. IaC (Terraform & Ansible)
- Terraform generates `transcoder_output.env`
- Ansible ad-hoc module (`stat`) verifies file creation

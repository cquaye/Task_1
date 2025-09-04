#Main Account Information

#region
variable "main-account-region" {
  type = string
  default = "asia-northeast1"
}

#IKE #1
variable "main-account-ike1" {
  type = string
  default = "UYCgiiF2N95QvG6sir7Vm+n5g6mxcaJK"
}

#IKE #2
variable "main-account-ike2" {
  type = string
  default = "dEKrfCO9PMssknwkw5ns9ec7lbMQWgVa"
}

variable "main-tunnel1-cloudrouter-bgp-ip" {
  type = string
  default = "169.254.1.1"
}

variable "main-tunnel1-peer-bgp-ip" {
  type = string
  default = "169.254.1.2"
}

variable "main-tunnel2-cloudrouter-bgp-ip" {
  type = string
  default = "169.254.1.5"
}

variable "main-tunnel2-peer-bgp-ip" {
  type = string
  default = "169.254.1.6"
}

variable "team2main-main-side-asn" {
  type = string
  default = "64520"
}

variable "team2main-team-side-asn" {
  type = string
  default = "65530"
}

variable "main-ha-vpn-self-link" {
  type = string
  default = "https://www.googleapis.com/compute/v1/projects/lab-team-account/regions/asia-northeast1/vpnGateways/team2main-vpn"
  
}

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

variable "main-account-ha-vpn-self-link" {
  type = string
  default = "VPN SELF-LINK GOES HERE"     #paste the output self link url from the main account terraform
}

# Ignore for testing 3rd account
# #Arma1 Account Information

# #region
# variable "arma1-account-region" {
#   type = string
#   default = "us-central1"
# }

# #IKE #1
# variable "arma1-account-ike1" {
#   type = string
#   default = "uGSMQGULbQF8izV/c2hPhmdtKHQTaJKU"
# }

# #IKE #2
# variable "arma1-account-ike2" {
#   type = string
#   default = "QpEwUBU3k0jc9f1RwhyhzcdlUvAXudg4"
# }

# variable "arma1-tunnel1-cloudrouter-bgp-ip" {
#   type = string
#   default = "169.254.2.1"
# }

# variable "arma1-tunnel1-peer-bgp-ip" {
#   type = string
#   default = "169.254.2.2"
# }

# variable "arma1-tunnel2-cloudrouter-bgp-ip" {
#   type = string
#   default = "169.254.2.5"
# }

# variable "arma1-tunnel2-peer-bgp-ip" {
#   type = string
#   default = "169.254.2.6"
# }

# variable "team2arma1-arm1-side-asn" {
#   type = string
#   default = "64521"
# }

# variable "team2arma1-team-side-asn" {
#   type = string
#   default = "65531"
# }

# variable "arma1-account-ha-vpn-self-link" {
#   type = string
#   default = ""
# }
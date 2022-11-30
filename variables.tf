variable "freetext" {
  description = "Free text to be added at the start of the contact info string, typically containing a name of the operator or operator organisation."
  default     = ""
  type        = string
  validation {
    condition     = length(regexall(":+", var.freetext)) == 0
    error_message = "Free text cannot contain colons. Use the dedicated input if you are trying to use a field to ensure correct ordering of fields."
  }
}

variable "email" {
  default     = null
  type        = string
  description = "This field contains the email address of the technical contact managing this Tor relay. The @ sign will be automatically substituted with []."
}

variable "url" {
  default     = null
  type        = string
  description = "This field contains an url or hostname pointing to the website of the organization or person responsible for this Tor relay."
}

variable "proof" {
  default     = null
  type        = string
  description = "The proof field is only relevant when the url field is set. It is ignored when url is not set. The proof field gives the operator the option to authenticate the url field. Refer to the specification for more information."
}

variable "pgp" {
  default     = null
  type        = string
  description = "40 characters PGP key fingerprint (long form) without leading 0x and without spaces. This key relates to the email address given in the email field, but providing the pgp field without an email field is also possible."
}

variable "abuse" {
  default     = null
  type        = string
  description = "Email address of the abuse handling contact for this Tor relay. This is primariy relevant for Tor exit relays but can also be used on non-exit relays. The @ sign will be automatically substituted with []."
}

variable "keybase" {
  default     = null
  type        = string
  description = "The technical contact’s keybase username. This identifier MUST be usable to create a valid keybase.io profile url."
}

variable "twitter" {
  default     = null
  type        = string
  description = "The entity’s twitter username without the leading @ (non-technical contact). The user MUST be usable to create a valid twitter profile url. If the responsible organization or person has no twitter account, the technical contact’s twitter handle can be used instead."
}

variable "mastodon" {
  default     = null
  type        = string
  description = "url pointing to the entity's mastodon profile (responsible organization/person)."
}

variable "matrix" {
  default     = null
  type        = string
  description = "Matrix user identifier for the technical contact for this Tor relay."
}

variable "xmpp" {
  default     = null
  type        = string
  description = "XMPP handle for the technical contact of this Tor relay. The @ sign will be automatically substituted with []."
}

variable "otr3" {
  default     = null
  type        = string
  description = "OTR version 3 key fingerprint without spaces. This key fingerprint relates to the xmpp address given in the xmpp field."
}

variable "hoster" {
  default     = null
  type        = string
  description = "Commercial hoster domain where this server has been ordered. This is supposed to help other relay operators and future relay operators to find hosting providers. Refer to the specification for normalisation rules."
}

variable "cost" {
  default     = null
  type        = string
  description = "Monthly hosting costs the hosting company is charging for the server. Refer to the specification for normalisation rules."
}

variable "uplinkbw" {
  default     = null
  type        = number
  description = "Logical network interface speed in Mbit/s (1Mbit/s = 1 000 000 Bit/s) or the value of RelayBandwidthRate in your torrc setting (whatever is smaller). For asymetrical uplinks specify the lower of up- and download bandwidth."
}

variable "trafficacct" {
  default     = null
  type        = number
  description = "States if this is an unmetered or metered offering. In case of metered bandwidth the monthly included outbound (TX) traffic in GiB (GibiByte) MUST be provided. If no traffic is included in the monthly costs, this value MUST be set to 0. If the hoster meters in+outbound the hoster provided value must be divided by two. This is an integer value."
}

variable "memory" {
  default     = null
  type        = number
  description = "Non-persistent memory (RAM) available on this server - measured in MB (Mebibytes). This is the output of free -m on most Unix-based systems."
}

variable "cpu" {
  default     = null
  type        = string
  description = "Only relevant for relays running on bare metal. String without spaces describing the used CPU model."
}

variable "virtualization" {
  default     = null
  type        = string
  description = "States the underlying virtualization technology used on which the OS is running. Use “baremetal” for bare-metal servers (not virtualized)."
}

variable "btc" {
  default     = null
  type        = string
  description = "Bitcoin or OpenAlias address where people can send donations to support the operation of this Tor relay."
}

variable "zec" {
  default     = null
  type        = string
  description = "Zcash address where people can send donations to support the operation of this Tor relay."
}

variable "xmr" {
  default     = null
  type        = string
  description = "Monero or OpenAlias address where people can send donations to support the operation of this Tor relay."
}

variable "donationurl" {
  default     = null
  type        = string
  description = "url pointing to a website that contains donation information to support this Tor relay. This MUST be an HTTPS URL."
}

variable "offlinemasterkey" {
  default     = null
  type        = bool
  description = "Offline master key is enabled."
}

variable "signingkeylifetime" {
  default     = null
  type        = number
  description = "Integer stating the signing key renewal interval in days."
}

variable "sandbox" {
  default     = null
  type        = bool
  description = "Sandbox is enabled."
}

variable "os" {
  default     = null
  type        = string
  description = "String stating which OS distribution and version is used. Distribution and version is separated with a “/” sign."
}

variable "tls" {
  default     = null
  type        = string
  description = "Which tls library is used."
}

variable "aesni" {
  default     = null
  type        = bool
  description = "AES-NI is available."
}

variable "autoupdate" {
  default     = null
  type        = bool
  description = "Automatic unattended updates are enabled."
}

variable "confmgmt" {
  default     = "terraform"
  type        = string
  description = "States what configuration managment system is used. Set to “manual” for no configuration management."
}

variable "dnslocation" {
  default     = null
  type        = string
  description = "Exits only. Refer to specification."
}

variable "dnsqname" {
  default     = null
  type        = bool
  description = "Exits only. Refer to specification."
}

variable "dnssec" {
  default     = null
  type        = bool
  description = "Refer to specification."
}

variable "dnslocalrootzone" {
  default     = null
  type        = bool
  description = "Refer to specification."
}


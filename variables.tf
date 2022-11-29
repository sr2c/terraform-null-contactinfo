variable "freetext" {
  description = "Free text to be added at the start of the contact info string, typically containing a name of the operator or operator organisation."
  default = ""
  type = string
  validation {
    condition = length(regexall(":+", var.freetext)) == 0
    error_message = "Free text cannot contain colons. Use the dedicated input if you are trying to use a field to ensure correct ordering of fields."
  }
}

variable "email" {
  description = "This field contains the email address of the technical contact managing this Tor relay. The @ sign will be automatically substituted with []."
  default = null
}

variable "url" {
  default = null
  description = "This field contains an url or hostname pointing to the website of the organization or person responsible for this Tor relay."
}

variable "proof" {
  default = null
  description = "The proof field is only relevant when the url field is set. It is ignored when url is not set. The proof field gives the operator the option to authenticate the url field. Refer to the specification for more information."
}

variable "pgp" {
  description = "40 characters PGP key fingerprint (long form) without leading 0x and without spaces. This key relates to the email address given in the email field, but providing the pgp field without an email field is also possible."
  default = null
}

variable "abuse" {
  default = null
  description = "Email address of the abuse handling contact for this Tor relay. This is primariy relevant for Tor exit relays but can also be used on non-exit relays. The @ sign will be automatically substituted with []."
}

variable "keybase" {
  default = null
  description = "The technical contact’s keybase username. This identifier MUST be usable to create a valid keybase.io profile url."
}

variable "twitter" {
  default = null
  description = "The entity’s twitter username without the leading @ (non-technical contact). The user MUST be usable to create a valid twitter profile url. If the responsible organization or person has no twitter account, the technical contact’s twitter handle can be used instead."
}

variable "mastodon" {
  default = null
  description = "url pointing to the entity's mastodon profile (responsible organization/person)."
}

variable "matrix" {
  description = "Matrix user identifier for the technical contact for this Tor relay."
  default = null
}

variable "xmpp" {
  default = null
  description = "XMPP handle for the technical contact of this Tor relay. The @ sign will be automatically substituted with []."
}

variable "otr3" {
  default = null
  description = "OTR version 3 key fingerprint without spaces. This key fingerprint relates to the xmpp address given in the xmpp field."
}

variable "hoster" {
  description = "Commercial hoster domain where this server has been ordered. This is supposed to help other relay operators and future relay operators to find hosting providers. Refer to the specification for normalisation rules."
  default = null
}

variable "cost" {
  default = null
  description = "Monthly hosting costs the hosting company is charging for the server. Refer to the specification for normalisation rules."
}

variable "uplinkbw" {
  default = null
  description = "Logical network interface speed in Mbit/s (1Mbit/s = 1 000 000 Bit/s) or the value of RelayBandwidthRate in your torrc setting (whatever is smaller). For asymetrical uplinks specify the lower of up- and download bandwidth."
}

variable "trafficacct" {
  default = null
  description = "States if this is an unmetered or metered offering. In case of metered bandwidth the monthly included outbound (TX) traffic in GiB (GibiByte) MUST be provided. If no traffic is included in the monthly costs, this value MUST be set to 0. If the hoster meters in+outbound the hoster provided value must be divided by two. This is an integer value."
}

variable "memory" {
  default = null
  description = "Non-persistent memory (RAM) available on this server - measured in MB (Mebibytes). This is the output of free -m on most Unix-based systems."
}

variable "cpu" {
  default = null
  description = "Only relevant for relays running on bare metal. String without spaces describing the used CPU model."
}

variable "virtualization" {
  description = "States the underlying virtualization technology used on which the OS is running. Use “baremetal” for bare-metal servers (not virtualized)."
  default = null
}

variable "btc" {
  description = "Bitcoin or OpenAlias address where people can send donations to support the operation of this Tor relay."
  default = null
}

variable "zec" {
  description = "Zcash address where people can send donations to support the operation of this Tor relay."
  default = null
}

variable "xmr" {
  description = "Monero or OpenAlias address where people can send donations to support the operation of this Tor relay."
  default = null
}

variable "donationurl" {
  description = "url pointing to a website that contains donation information to support this Tor relay. This MUST be an HTTPS URL."
  default = null
}

variable "offlinemasterkey" {
  type = bool
  default = null
  description = "Offline master key is enabled."
}

variable "signingkeylifetime" {
  type = number
  default = null
  description = "Integer stating the signing key renewal interval in days."
}

variable "sandbox" {
  type = bool
  default = null
  description = "Sandbox is enabled."
}

variable "os" {
  default = null
  description = "String stating which OS distribution and version is used. Distribution and version is separated with a “/” sign."
}

variable "tls" {
  default = null
  description = "Which tls library is used."
}

variable "aesni" {
  type = bool
  default = null
  description = "AES-NI is available."
}

variable "autoupdate" {
  type = bool
  default = null
  description = "Automatic unattended updates are enabled."
}

variable "confmgmt" {
  default = "terraform"
  description = "States what configuration managment system is used. Set to “manual” for no configuration management."
}

variable "dnslocation" {
  default = null
  description = "Exits only. Refer to specification."
}

variable "dnsqname" {
  default = null
  description = "Exits only. Refer to specification."
}

variable "dnssec" {
  default = null
  description = "Refer to specification."
}

variable "dnslocalrootzone" {
  default = null
  description = "Refer to specification."
}


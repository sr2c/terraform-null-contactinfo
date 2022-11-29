<!-- markdownlint-disable -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.3.0 |

## Providers

No providers.

## Modules

No modules.

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_abuse"></a> [abuse](#input\_abuse) | Email address of the abuse handling contact for this Tor relay. This is primariy relevant for Tor exit relays but can also be used on non-exit relays. The @ sign will be automatically substituted with []. | `any` | `null` | no |
| <a name="input_aesni"></a> [aesni](#input\_aesni) | AES-NI is available. | `bool` | `null` | no |
| <a name="input_autoupdate"></a> [autoupdate](#input\_autoupdate) | Automatic unattended updates are enabled. | `bool` | `null` | no |
| <a name="input_btc"></a> [btc](#input\_btc) | Bitcoin or OpenAlias address where people can send donations to support the operation of this Tor relay. | `any` | `null` | no |
| <a name="input_confmgmt"></a> [confmgmt](#input\_confmgmt) | States what configuration managment system is used. Set to “manual” for no configuration management. | `string` | `"terraform"` | no |
| <a name="input_cost"></a> [cost](#input\_cost) | Monthly hosting costs the hosting company is charging for the server. Refer to the specification for normalisation rules. | `any` | `null` | no |
| <a name="input_cpu"></a> [cpu](#input\_cpu) | Only relevant for relays running on bare metal. String without spaces describing the used CPU model. | `any` | `null` | no |
| <a name="input_dnslocalrootzone"></a> [dnslocalrootzone](#input\_dnslocalrootzone) | Refer to specification. | `bool` | `null` | no |
| <a name="input_dnslocation"></a> [dnslocation](#input\_dnslocation) | Exits only. Refer to specification. | `string` | `null` | no |
| <a name="input_dnsqname"></a> [dnsqname](#input\_dnsqname) | Exits only. Refer to specification. | `bool` | `null` | no |
| <a name="input_dnssec"></a> [dnssec](#input\_dnssec) | Refer to specification. | `bool` | `null` | no |
| <a name="input_donationurl"></a> [donationurl](#input\_donationurl) | url pointing to a website that contains donation information to support this Tor relay. This MUST be an HTTPS URL. | `any` | `null` | no |
| <a name="input_email"></a> [email](#input\_email) | This field contains the email address of the technical contact managing this Tor relay. The @ sign will be automatically substituted with []. | `any` | `null` | no |
| <a name="input_freetext"></a> [freetext](#input\_freetext) | Free text to be added at the start of the contact info string, typically containing a name of the operator or operator organisation. | `string` | `""` | no |
| <a name="input_hoster"></a> [hoster](#input\_hoster) | Commercial hoster domain where this server has been ordered. This is supposed to help other relay operators and future relay operators to find hosting providers. Refer to the specification for normalisation rules. | `any` | `null` | no |
| <a name="input_keybase"></a> [keybase](#input\_keybase) | The technical contact’s keybase username. This identifier MUST be usable to create a valid keybase.io profile url. | `any` | `null` | no |
| <a name="input_mastodon"></a> [mastodon](#input\_mastodon) | url pointing to the entity's mastodon profile (responsible organization/person). | `any` | `null` | no |
| <a name="input_matrix"></a> [matrix](#input\_matrix) | Matrix user identifier for the technical contact for this Tor relay. | `any` | `null` | no |
| <a name="input_memory"></a> [memory](#input\_memory) | Non-persistent memory (RAM) available on this server - measured in MB (Mebibytes). This is the output of free -m on most Unix-based systems. | `any` | `null` | no |
| <a name="input_offlinemasterkey"></a> [offlinemasterkey](#input\_offlinemasterkey) | Offline master key is enabled. | `bool` | `null` | no |
| <a name="input_os"></a> [os](#input\_os) | String stating which OS distribution and version is used. Distribution and version is separated with a “/” sign. | `any` | `null` | no |
| <a name="input_otr3"></a> [otr3](#input\_otr3) | OTR version 3 key fingerprint without spaces. This key fingerprint relates to the xmpp address given in the xmpp field. | `any` | `null` | no |
| <a name="input_pgp"></a> [pgp](#input\_pgp) | 40 characters PGP key fingerprint (long form) without leading 0x and without spaces. This key relates to the email address given in the email field, but providing the pgp field without an email field is also possible. | `string` | `null` | no |
| <a name="input_proof"></a> [proof](#input\_proof) | The proof field is only relevant when the url field is set. It is ignored when url is not set. The proof field gives the operator the option to authenticate the url field. Refer to the specification for more information. | `any` | `null` | no |
| <a name="input_sandbox"></a> [sandbox](#input\_sandbox) | Sandbox is enabled. | `bool` | `null` | no |
| <a name="input_signingkeylifetime"></a> [signingkeylifetime](#input\_signingkeylifetime) | Integer stating the signing key renewal interval in days. | `number` | `null` | no |
| <a name="input_tls"></a> [tls](#input\_tls) | Which tls library is used. | `any` | `null` | no |
| <a name="input_trafficacct"></a> [trafficacct](#input\_trafficacct) | States if this is an unmetered or metered offering. In case of metered bandwidth the monthly included outbound (TX) traffic in GiB (GibiByte) MUST be provided. If no traffic is included in the monthly costs, this value MUST be set to 0. If the hoster meters in+outbound the hoster provided value must be divided by two. This is an integer value. | `any` | `null` | no |
| <a name="input_twitter"></a> [twitter](#input\_twitter) | The entity’s twitter username without the leading @ (non-technical contact). The user MUST be usable to create a valid twitter profile url. If the responsible organization or person has no twitter account, the technical contact’s twitter handle can be used instead. | `any` | `null` | no |
| <a name="input_uplinkbw"></a> [uplinkbw](#input\_uplinkbw) | Logical network interface speed in Mbit/s (1Mbit/s = 1 000 000 Bit/s) or the value of RelayBandwidthRate in your torrc setting (whatever is smaller). For asymetrical uplinks specify the lower of up- and download bandwidth. | `any` | `null` | no |
| <a name="input_url"></a> [url](#input\_url) | This field contains an url or hostname pointing to the website of the organization or person responsible for this Tor relay. | `any` | `null` | no |
| <a name="input_virtualization"></a> [virtualization](#input\_virtualization) | States the underlying virtualization technology used on which the OS is running. Use “baremetal” for bare-metal servers (not virtualized). | `any` | `null` | no |
| <a name="input_xmpp"></a> [xmpp](#input\_xmpp) | XMPP handle for the technical contact of this Tor relay. The @ sign will be automatically substituted with []. | `any` | `null` | no |
| <a name="input_xmr"></a> [xmr](#input\_xmr) | Monero or OpenAlias address where people can send donations to support the operation of this Tor relay. | `any` | `null` | no |
| <a name="input_zec"></a> [zec](#input\_zec) | Zcash address where people can send donations to support the operation of this Tor relay. | `any` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_rendered"></a> [rendered](#output\_rendered) | n/a |
<!-- markdownlint-restore -->

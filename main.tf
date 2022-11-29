terraform {
  experiments = [module_variable_optional_attrs]
}

locals {
  parts = [
    var.freetext,
    var.email == null ? "" : format("email:%s ", replace(var.email, "@", "[]")),
    var.url == null ? "" : "url:${var.url} ",
    var.proof == null ? "" : "proof:${var.proof} ",
    "ciissversion:2 ",
    var.pgp == null ? "" : "pgp:${var.pgp} ",
    var.abuse == null ? "" : format("abuse:%s ", replace(var.abuse, "@", "[]")),
    var.keybase == null ? "" : "keybase:${var.keybase} ",
    var.twitter == null ? "" : "twitter:${var.twitter} ",
    var.mastodon == null ? "" : "mastodon:${var.mastodon} ",
    var.matrix == null ? "" : "matrix:${var.matrix} ",
    var.xmpp == null ? "" : "xmpp:${var.xmpp} ",
    var.otr3 == null ? "" : "otr3:${var.otr3} ",
    var.hoster == null ? "" : "hoster:${var.hoster} ",
    var.cost == null ? "" : "cost:${var.cost} ",
    var.uplinkbw == null ? "" : "uplinkbw:${var.uplinkbw} ",
    var.trafficacct == null ? "" : "trafficacct:${var.trafficacct} ",
    var.memory == null ? "" : "memory:${var.memory} ",
    var.cpu == null ? "" : "cpu:${var.cpu} ",
    var.virtualization == null ? "" : "virtualization:${var.virtualization} ",
    var.btc == null ? "" : "btc:${var.btc} ",
    var.zec == null ? "" : "zec:${var.zec} ",
    var.xmr == null ? "" : "xmr:${var.xmr} ",
    var.donationurl == null ? "" : "donationurl:${var.donationurl} ",
    var.offlinemasterkey == null ? "" : format("offlinemasterkey:%s ", var.offlinemasterkey ? "y" : "n"),
    var.signingkeylifetime == null ? "" : "signingkeylifetime:${var.signingkeylifetime} ",
    var.sandbox == null ? "" : format("sandbox:%s ", var.sandbox ? "y" : "n"),
    var.os == null ? "" : "os:${var.os} ",
    var.tls == null ? "" : "tls:${var.tls} ",
    var.aesni == null ? "" : format("aesni:%s ", var.aesni ? "y" : "n"),
    var.autoupdate == null ? "" : format("autoupdate:%s ", var.autoupdate ? "y" : "n"),
    var.confmgmt == null ? "" : "confmgmt:${var.confmgmt} ",
    var.dnslocation == null ? "" : "dnslocation:${var.dnslocation} ",
    var.dnsqname == null ? "" : "dnsqname:${var.dnsqname} ",
    var.dnssec == null ? "" : "dnssec:${var.dnssec} ",
    var.dnslocalrootzone == null ? "" : "dnslocalrootzone:${var.dnslocalrootzone} ",
  ]
  joined_parts = join("", local.parts)
}

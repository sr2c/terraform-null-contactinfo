import pytest
import tftest


@pytest.fixture
def plan():
    tf = tftest.TerraformTest(tfdir=".")
    tf.setup()
    return tf.plan(output=True, tf_vars={
        "freetext": "F3 Netze <abuse@f3netze.de>",
        "email": "abuse@f3netze.de",
        "url": "www.f3netze.de",
        "proof": "uri-rsa",
        "pgp": "32A1621FC5290921D720940187AC9FC1F2BCCB30",
        "abuse": "abuse@f3netze.de",
        "uplinkbw": 375,
        "trafficacct": "unmetered",
        "memory": 32018,
        "cpu": "i7-9700K",
        "virtualization": "baremetal",
        "donationurl": "https://f3netze.de/unterstuetzen/",
        "offlinemasterkey": "true",
        "sandbox": "true",
        "os": "Debian_GNU/Linux",
        "tls": "openssl",
        "aesni": "true",
        "autoupdate": "true",
        "confmgmt": "ansible",
        "dnslocation": "sameas",
        "dnsqname": "true",
        "dnssec": "true",
        "dnslocalrootzone": "true"
    })


def test_exampledata(plan):
    assert plan.outputs["rendered"].strip() == "F3 Netze <abuse@f3netze.de> email:abuse[]f3netze.de url:www.f3netze.de proof:uri-rsa ciissversion:2 pgp:32A1621FC5290921D720940187AC9FC1F2BCCB30 abuse:abuse[]f3netze.de uplinkbw:375 trafficacct:unmetered memory:32018 cpu:i7-9700K virtualization:baremetal donationurl:https://f3netze.de/unterstuetzen/ offlinemasterkey:y sandbox:y os:Debian_GNU/Linux tls:openssl aesni:y autoupdate:y confmgmt:ansible dnslocation:sameas dnsqname:y dnssec:y dnslocalrootzone:y"

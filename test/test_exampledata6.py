import pytest
import tftest


@pytest.fixture
def plan():
    tf = tftest.TerraformTest(tfdir=".")
    tf.setup()
    return tf.plan(output=True, tf_vars={
        "freetext": "Lucas Werkmeister",
        "email": "mail@lucaswerkmeister.de",
        "url": "https://lucaswerkmeister.de",
        "proof": "uri-rsa",
        "pgp": "6B895B8B11A475B1EC931698FC46287272AE323F",
        "keybase": "lucaswerkmeister",
        "twitter": "LucasWerkmeistr",
        "hoster": "www.hetzner.com",
        "cost": "46.41EUR",
        "uplinkbw": 1000,
        "trafficacct": "unmetered",
        "memory": 64353,
        "cpu": "amd-ryzen-5-3600",
        "virtualization": "none",
        "offlinemasterkey": "false",
        "sandbox": "true",
        "os": "debian/10",
        "tls": "openssl",
        "aesni": "true",
        "autoupdate": "true",
        "confmgmt": "manual"
    })


def test_exampledata(plan):
    assert plan.outputs["rendered"].strip() == "Lucas Werkmeister email:mail[]lucaswerkmeister.de url:https://lucaswerkmeister.de proof:uri-rsa ciissversion:2 pgp:6B895B8B11A475B1EC931698FC46287272AE323F keybase:lucaswerkmeister twitter:LucasWerkmeistr hoster:www.hetzner.com cost:46.41EUR uplinkbw:1000 trafficacct:unmetered memory:64353 cpu:amd-ryzen-5-3600 virtualization:none offlinemasterkey:n sandbox:y os:debian/10 tls:openssl aesni:y autoupdate:y confmgmt:manual"

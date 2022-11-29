import pytest
import tftest


@pytest.fixture
def plan():
    tf = tftest.TerraformTest(tfdir=".")
    tf.setup()
    return tf.plan(output=True, tf_vars={
        "email": "mkg20001@gmail.com",
        "url": "mkg20001.io",
        "proof": "dns-rsa",
        "pgp": "9CF49C5F",
        "abuse":"mkg20001@gmail.com",
        "hoster": "hetzner.com",
        "trafficacct": "unmetered",
        "donationurl": "paypal.me/mkg20001",
        "confmgmt": "nixos"
    })


def test_exampledata(plan):
    assert plan.outputs["rendered"].strip() == "email:mkg20001[]gmail.com url:mkg20001.io proof:dns-rsa ciissversion:2 pgp:9CF49C5F abuse:mkg20001[]gmail.com hoster:hetzner.com trafficacct:unmetered donationurl:paypal.me/mkg20001 confmgmt:nixos"

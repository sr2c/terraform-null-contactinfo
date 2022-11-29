import pytest
import tftest


@pytest.fixture
def plan():
    tf = tftest.TerraformTest(tfdir=".")
    tf.setup()
    return tf.plan(output=True, tf_vars={
        "email": "tor@dtf.contact",
        "url": "https://dtf.contact",
        "proof": "uri-rsa",
        "pgp": "F76869F618DE5FA2AB72B2D0F104DFF92BDB5013",
        "abuse": "abuse@dtf.contact"
    })


def test_exampledata(plan):
    assert plan.outputs["rendered"].strip() == "email:tor[]dtf.contact url:https://dtf.contact proof:uri-rsa ciissversion:2 pgp:F76869F618DE5FA2AB72B2D0F104DFF92BDB5013 abuse:abuse[]dtf.contact confmgmt:terraform"

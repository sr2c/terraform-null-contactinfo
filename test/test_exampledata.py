import pytest
import tftest


@pytest.fixture
def plan():
    tf = tftest.TerraformTest(tfdir=".")
    tf.setup()
    return tf.plan(output=True, tf_vars={
        "email": "tor@example.com",
        "url": "https://example.com",
        "proof": "uri-rsa",
        "uplinkbw": 100
    })


def test_exampledata(plan):
    assert plan.outputs["rendered"].strip() == "email:tor[]example.com url:https://example.com proof:uri-rsa ciissversion:2 uplinkbw:100 confmgmt:terraform"

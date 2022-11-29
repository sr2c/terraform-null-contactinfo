import pytest
import tftest


@pytest.fixture
def plan():
    tf = tftest.TerraformTest(tfdir=".")
    tf.setup()
    return tf.plan(output=True, tf_vars={
        "email": "abuse@tuxli.org",
        "url": "https://tuxli.org/",
        "proof": "uri-rsa",
        "pgp": "32A1621FC5290921D720940187AC9FC1F2BCCB30"
    })


def test_exampledata(plan):
    assert plan.outputs["rendered"].strip() == "email:abuse[]tuxli.org url:https://tuxli.org/ proof:uri-rsa ciissversion:2 pgp:32A1621FC5290921D720940187AC9FC1F2BCCB30 confmgmt:terraform"

import pulumi
import pulumi_aws as aws

# Configuration
config = pulumi.Config()
instance_type = config.get("instance_type") or "t3.large"
ami = config.get("ami") or aws.ec2.get_ami(
    most_recent=True,
    owners=["amazon"],
    filters=[{"name": "name", "values": ["amzn2-ami-hvm-*-x86_64-gp2"]}],
).id
key_name = config.get("key_name") or "khaled-aws"

# Create a security group
sg = aws.ec2.SecurityGroup("web-sg",
    description="Enable SSH access",
    ingress=[
        {"protocol": "tcp", "from_port": 22, "to_port": 22, "cidr_blocks": ["0.0.0.0/0"]},
    ],
    egress=[
        {"protocol": "-1", "from_port": 0, "to_port": 0, "cidr_blocks": ["0.0.0.0/0"]},
    ]
)

# Create an EC2 instance
server = aws.ec2.Instance("pulumi-server",
    instance_type=instance_type,
    ami=ami,
    key_name=key_name,
    vpc_security_group_ids=[sg.id],
    tags={"Name": "PulumiServer"}
)

# Export public IP
pulumi.export("instance_id", server.id)
pulumi.export("public_ip", server.public_ip)
pulumi.export("public_dns", server.public_dns)

# Cleanup logic: just mention that `pulumi destroy` should be used
pulumi.info("Run `pulumi destroy` to clean up all resources.")

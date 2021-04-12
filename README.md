# terraform-aws-k8s

## Intro

Terraform scripts to build a k8s cluster [Now with modules]

### k8s_cluster (Variable)

```hcl
[
  {
    role = "worker",
    replicas = 2,
    type = "m5a.large"
  },
  {
    role = "control-plane",
    replicas = 3,
    type = "m5a.large"
  },
  {
    role = "haproxy",
    replicas = 1,
    type = "t2.micro"
  }
]
```

## Vars

| Name | Default | Must change |
| --- | --- | --- | 
| aws_ami_id | "ami-013f17f36f8b1fefb" (Ubuntu 18) | ❓ |
| aws_key_pair | key | ✔️ |
| aws_subnet_id | subnet-id | ✔️ |
| aws_security_group_ids| ["sg-id"] | ✔️ |
| aws_tag_name | kubernetes | ❓ |
| aws_region_name | us-east-1 | ❓ |
| k8s_cluster | see above | ☝️ |

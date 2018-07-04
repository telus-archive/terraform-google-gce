# terraform-google-gce

A Terraform module for creating a fully functional Google GCE instance.

# Module Input Variables

Required:

* `project` - The ID of the project in which the resource belongs to
* `name` - The name of the instance

Defaults:

* `machine_type` - The type of instance you want to use, defaults to `n1-standard-1`
* `zone` - The zone you want to launch your instance in, defaults to `northamerica-northeast1-a`
* `image` - The image you want to use for your instance, defaults to `ubuntu-1604-lts`
* `allow_stopping_for_update` - Allows Terraform to stop the instance to update its properties, defaults to `false`
* `can_ip_forward` - Allow sending and receiving of packets with non-matching source or destination IPs, defaults to `false`
* `create_timeout` - Timeout in minutes for creating instances, defaults to 0
* `description` - Instance description, defaults to nothing
* `deletion_protection` - Enable deletion protection on this instance, defaults to false
* `scopes` - A list of service scopes to use, defaults to `cloud-platform`
* `protocol` - The name of the protocols to allow, defaults to `tcp`
* `ports` - List of ports and/or port ranges to allow, defaults to `80, 443, 22`

# Module Outputs

* `instance_id` - The gce instance id

# Usage

## Examples

Take a look at [gce.tf](./examples/basic/gce.tf) for a working example.

You can overwrite more default variables if you need to.

## Launching the Instance

Initialize Terraform:

```
terraform init
```

Review your changes:

```
terraform plan
```

Apply your changes:

```
terraform apply
```

Output Instance information:

```
terraform show
```

# Contributing

When contributing to this repository, please first discuss the change you wish to make via a Github issue.

# Contributors

* [Alex Podobnik](https://github.com/alexandarp)

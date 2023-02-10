- Create Plan

```
> terraform plan
OR
> terraform plan -out plan
```

- View plan with;

```
terraform show -json plan | jq .
```

- Why a state file?

https://developer.hashicorp.com/terraform/language/state/purpose

> In the default configuration, Terraform stores the state in a file in the current working directory where Terraform was run. This is okay for getting started, but when using Terraform in a team it is important for everyone to be working with the same state so that operations will be applied to the same remote objects.

> Remote state is the recommended solution to this problem. With a fully-featured state backend, Terraform can use remote locking as a measure to avoid two or more different users accidentally running Terraform at the same time, and thus ensure that each Terraform run begins with the most recent updated state.

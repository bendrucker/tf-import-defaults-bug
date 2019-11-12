# terraform-import-default-bug

```sh
./test.sh
```

* **Expected:** Terraform successfully imports the resource
* **Observed:** Terraform attempts to assume AWS role named "DEFAULT" and fails

```
Error: The role "DEFAULT" cannot be assumed.

  There are a number of possible causes of this - the most common are:
    * The credentials used in order to assume the role are invalid
    * The credentials do not have appropriate permission to assume the role
    * The role ARN is not valid

  on module/main.tf line 5, in provider "aws":
   5: provider "aws" {
```

After removing the `default` for `variable "input"`, Terraform no longer invokes the provider. Instead of failing with a `The role "OVERRIDE" cannot be assumed` error, Terraform proceeds succesfully.
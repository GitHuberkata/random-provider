# A sample repo to demonstrate the usage of `random` provider 

### Prerequisites
- Git
- Terraform CLI
- AWS credentials

### Use Case
The configuration is using `random provider` and generates random priority between 1 and 50000.
`Random_provider` can have meta-argument `keepers`.
More details on the `random provider` can be found [here](https://registry.terraform.io/providers/hashicorp/random/latest/docs)

### How to use
1. Get the repo
```
git clone https://github.com/GitHuberkata/module-code.git
```
2. Navigate to folder projects
```
cd random-provider
```
3. Execute
- `terraform init`
- `terraform plan`
- `terraform apply`
After each apply we will have random number between 1 and 50000 printed out in the output on the terminal:
Outputs:

```
value = {
  "id" = "18505"
  "keepers" = tomap({
    "value" = "yes"
  })
  "max" = 50000
  "min" = 1
  "result" = 18505
  "seed" = tostring(null)
  ```




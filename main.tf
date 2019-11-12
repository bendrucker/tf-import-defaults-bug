module "mod" {
  source = "./module"

  input = "OVERRIDE"
}

resource "random_id" "foo" {}
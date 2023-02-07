terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
      version = "3.4.3"
    }
  }
}

provider "random" {
  # Configuration options
}

# The following example shows how to generate a random priority
# between 1 and 50000

variable "check_num" {
    default = 5
}

resource "random_integer" "priority" {
  min = 1
  max = 50000
  keepers = {
    value = var.check_num    
  }
}

output "value" {
    value = random_integer.priority

}
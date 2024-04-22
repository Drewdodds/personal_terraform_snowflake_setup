terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}

provider "snowflake" {
  role = "SYSADMIN"
  alias = "sa"
}

resource "snowflake_database" "db" {
  name = "TEST_DB"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TEST_WH"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}
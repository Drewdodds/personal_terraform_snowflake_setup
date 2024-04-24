terraform {
  required_providers {
    snowflake = {
      source  = "Snowflake-Labs/snowflake"
      version = "~> 0.87"
    }
  }
}
# this is the connection so we can "talk" to snowflake


provider "snowflake" {
  account = "${SNOWFLAKE_ACCOUNT}"
  user    = "${SNOWFLAKE_USER}"
  password = "${SNOWFLAKE_PASSWORD}"
}


resource "snowflake_database" "db" {
  name = "TF_DEMO"
}

resource "snowflake_warehouse" "warehouse" {
  name           = "TF_DEMO"
  warehouse_size = "xsmall"
  auto_suspend   = 60
}
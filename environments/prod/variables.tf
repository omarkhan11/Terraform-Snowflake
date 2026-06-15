variable "snowflake_account" {
  type        = string
  description = "The Snowflake account identifier"
}

variable "snowflake_user" {
  type        = string
  description = "The Snowflake username"
}

variable "snowflake_password" {
  type        = string
  description = "The Snowflake password"
  sensitive   = true # 🔒 Masks the password in terminal outputs!
}
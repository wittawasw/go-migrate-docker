table "accounts" {
  schema = schema.public
  column "id" {
    null = false
    type = serial
  }
  column "name" {
    null = true
    type = text
  }
  column "email" {
    null = true
    type = text
  }
  primary_key {
    columns = [column.id]
  }
  index "idx_accounts_id" {
    columns = [column.id]
  }
}
table "schema_migrations" {
  schema = schema.public
  column "version" {
    null = false
    type = bigint
  }
  column "dirty" {
    null = false
    type = boolean
  }
  primary_key {
    columns = [column.version]
  }
}
schema "public" {
  comment = "standard public schema"
}

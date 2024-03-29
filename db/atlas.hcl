env "local" {
  src = "file://db/schema.sql"
  dev = "docker://postgresql/15/dev"

  migration {
    dir    = "file://migrations"
    format = golang-migrate
  }
  format {
    migrate {
      diff = "{{ sql . \"  \" }}"
    }
  }
}

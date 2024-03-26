env "local" {
  src = "file://schema.sql"
  dev = "docker://mysql/8/dev"

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

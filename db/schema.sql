-- Add new schema named "public"
CREATE SCHEMA IF NOT EXISTS "public";
-- Set comment to schema: "public"
COMMENT ON SCHEMA "public" IS 'standard public schema';
-- Create "accounts" table
CREATE TABLE "public"."accounts" (
  "id" serial NOT NULL,
  "name" text NULL,
  "email" text NULL,
  PRIMARY KEY ("id")
);
-- Create index "idx_accounts_id" to table: "accounts"
CREATE INDEX "idx_accounts_id" ON "public"."accounts" ("id");
-- Create "schema_migrations" table
CREATE TABLE "public"."schema_migrations" (
  "version" bigint NOT NULL,
  "dirty" boolean NOT NULL,
  PRIMARY KEY ("version")
);

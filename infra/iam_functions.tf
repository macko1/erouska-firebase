locals {

  register_buid_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]

  is_buid_active_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]

  delete_user_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]

  delete_buid_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]

  delete_uploads_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/storage.objectAdmin"
  ]

  delete_upload_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/storage.objectAdmin"
  ]

  database_backup_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.importExportAdmin"
  ]

  change_push_token_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]

  aws_poller_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]

  delete_old_users_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]

  delete_user_trigger_roles = [
    "roles/cloudfunctions.serviceAgent",
    "roles/secretmanager.secretAccessor",
    "roles/datastore.user"
  ]
}

resource "google_project_iam_member" "register-buid" {
  count  = length(local.register_buid_roles)
  role   = local.register_buid_roles[count.index]
  member = "serviceAccount:${google_service_account.register-buid.email}"
}

resource "google_project_iam_member" "is-buid-active" {
  count  = length(local.is_buid_active_roles)
  role   = local.is_buid_active_roles[count.index]
  member = "serviceAccount:${google_service_account.is-buid-active.email}"
}

resource "google_project_iam_member" "delete-user" {
  count  = length(local.delete_user_roles)
  role   = local.delete_user_roles[count.index]
  member = "serviceAccount:${google_service_account.delete-user.email}"
}

resource "google_project_iam_member" "delete-buid" {
  count  = length(local.delete_buid_roles)
  role   = local.delete_buid_roles[count.index]
  member = "serviceAccount:${google_service_account.delete-buid.email}"
}

resource "google_project_iam_member" "delete-uploads" {
  count  = length(local.delete_uploads_roles)
  role   = local.delete_uploads_roles[count.index]
  member = "serviceAccount:${google_service_account.delete-uploads.email}"
}

resource "google_project_iam_member" "delete-upload" {
  count  = length(local.delete_upload_roles)
  role   = local.delete_upload_roles[count.index]
  member = "serviceAccount:${google_service_account.delete-upload.email}"
}

resource "google_project_iam_member" "database-backup" {
  count  = length(local.database_backup_roles)
  role   = local.database_backup_roles[count.index]
  member = "serviceAccount:${google_service_account.database-backup.email}"
}

resource "google_project_iam_member" "change-push-token" {
  count  = length(local.change_push_token_roles)
  role   = local.change_push_token_roles[count.index]
  member = "serviceAccount:${google_service_account.change-push-token.email}"
}

resource "google_project_iam_member" "aws-poller" {
  count  = length(local.aws_poller_roles)
  role   = local.aws_poller_roles[count.index]
  member = "serviceAccount:${google_service_account.aws-poller.email}"
}

resource "google_project_iam_member" "delete-old-users" {
  count  = length(local.delete_old_users_roles)
  role   = local.delete_old_users_roles[count.index]
  member = "serviceAccount:${google_service_account.delete-old-users.email}"
}

resource "google_project_iam_member" "delete-user-trigger" {
  count  = length(local.delete_user_trigger_roles)
  role   = local.delete_user_trigger_roles[count.index]
  member = "serviceAccount:${google_service_account.delete-user-trigger.email}"
}

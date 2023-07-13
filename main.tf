module "globals" {
  source = "git::https://git.gft.com/gcp_landing_zone/modules/globals.git?ref=mjja"
}

/*
// Because there is a need to add permissions on org level and SA do not have any permisions there, we need to add these roles through Cloud Console.
resource "google_organization_iam_binding" "scc-service-account-iam-1" {
  org_id  = var.organization_id
  role    = "roles/securitycenter.findingsEditor"
  members = [google_service_account.scc_service_account.member]
} 

resource "google_organization_iam_binding" "scc-service-account-iam-2" {
  org_id  = var.organization_id
  role    = "roles/securitycenter.assetsViewer"
  members = [google_service_account.scc_service_account.member]
}*/

resource "google_scc_source" "github" {
  #depends_on = [ google_organization_iam_binding.scc-service-account-iam ]
  display_name = "GitHub2"
  organization = var.organization_id
  description  = "My custom Cloud Security Command Center Finding Source"
}

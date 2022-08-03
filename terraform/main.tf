module "sandbox" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cxio.test.production@gmail.com"
    AccountName               = "Production"
    ManagedOrganizationalUnit = "Production"
    SSOUserEmail              = "cxio.test.production@gmail.com"
    SSOUserFirstName          = "production"
    SSOUserLastName           = "test"
  }

  account_tags = {
    "ENV" = "prod"
  }

  change_management_parameters = {
    change_requested_by = "terraform"
    change_reason       = "AFT test"
  }

  custom_fields = {
    group = "prod"
  }

  account_customizations_name = "sandbox"
}

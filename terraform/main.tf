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

  account_customizations_name = "production"
}

module "Development" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail              = "cxio.test.development@gmail.com"
    AccountName               = "Development"
    ManagedOrganizationalUnit = "Development"
    SSOUserEmail              = "cxio.test.development@gmail.com"
    SSOUserFirstName          = "Development"
    SSOUserLastName           = "test"
  }

  account_tags = {
    "ENV" = "Dev"
  }

  change_management_parameters = {
    change_requested_by = "terraform"
    change_reason       = "AFT test"
  }

  custom_fields = {
    group = "Dev"
  }

  account_customizations_name = "development"
}

module "Outest" {
  source = "./modules/aft-account-request"
  for_each = var.accounts
  control_tower_parameters = {
    AccountEmail              = each.value["AccountEmail"]
    AccountName               = each.value["AccountName"]
    ManagedOrganizationalUnit = each.value["ManagedOrganizationalUnit"]
    SSOUserEmail              = each.value["SSOUserEmail"]
    SSOUserFirstName          = each.value["SSOUserFirstName"]
    SSOUserLastName           = each.value["SSOUserLastName"]
  }

  account_tags = {
    "ENV" = "OU"
  }

  change_management_parameters = {
    change_requested_by = "terraform"
    change_reason       = "AFT test"
  }

  custom_fields = {
    group = "OU"
  }

  account_customizations_name = each.value["account_customizations_name"]
}





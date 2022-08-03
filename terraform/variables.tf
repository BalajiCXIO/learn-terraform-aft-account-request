variable "accounts" {
  type = map(object({
    AccountEmail     = string
    AccountName = string
    ManagedOrganizationalUnit     = string
    SSOUserEmail = string
    SSOUserFirstName     = string
    SSOUserLastName = string
    account_customizations_name = string
    
  }))
  default = {
    "first" = {
      AccountEmail     = "cxio.ou.test1@gmail.com"
      AccountName = "outest1"
      ManagedOrganizationalUnit = "OU-test"
      SSOUserEmail = "cxio.ou.test1@gmail.com"
      SSOUserFirstName = "ou"
      SSOUserLastName = "test1"
      account_customizations_name = "ou-test"
    }
    "second" = {
      AccountEmail     = "cxio.ou.test2@gmail.com"
      AccountName = "outest2"
      ManagedOrganizationalUnit = "OU-test"
      SSOUserEmail = "cxio.ou.test2@gmail.com"
      SSOUserFirstName = "ou"
      SSOUserLastName = "test2"
      account_customizations_name = "ou-test"
    }
    "third" = {
      AccountEmail     = "cxio.ou.test3@gmail.com"
      AccountName = "outest3"
      ManagedOrganizationalUnit = "OU-test"
      SSOUserEmail = "cxio.ou.test3@gmail.com"
      SSOUserFirstName = "ou"
      SSOUserLastName = "test3"
      account_customizations_name = "ou-test"
    }
  }
}
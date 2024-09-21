data "kion_ou" "parent" {
  filter {
    name   = "name"
    values = [var.ou_id]
  }
}

resource "kion_project" "this" {
  ou_id                = can(tonumber(var.ou_id)) ? var.ou_id : data.kion_ou.parent.list[0].id
  name                 = var.name
  permission_scheme_id = var.permission_scheme_id
  description          = var.description
  labels               = var.labels

  dynamic "owner_user_ids" {
    for_each = var.owner_user_ids
    content {
      id = owner_user_ids.value
    }
  }

  dynamic "owner_user_group_ids" {
    for_each = var.owner_user_group_ids
    content {
      id = owner_user_group_ids.value
    }
  }

  dynamic "project_funding" {
    for_each = var.project_funding
    content {
      amount            = project_funding.value.amount
      funding_order     = project_funding.value.funding_order
      funding_source_id = project_funding.value.funding_source_id
      start_datecode    = project_funding.value.start_datecode
      end_datecode      = project_funding.value.end_datecode
    }
  }

  auto_pay = var.auto_pay

  dynamic "budget" {
    for_each = var.budget_start_datecode != null && var.budget_end_datecode != null ? [1] : []
    content {
      start_datecode = var.budget_start_datecode
      end_datecode   = var.budget_end_datecode
      amount         = var.budget_amount
    }
  }

  default_aws_region = var.default_aws_region
}

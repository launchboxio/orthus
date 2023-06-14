class Api::TenantController < ApiController
  # Configure 'acts_as_tenant' base on the first subdomain
  set_current_tenant_by_subdomain(:entity, :subdomain, subdomain_lookup: :first)

end
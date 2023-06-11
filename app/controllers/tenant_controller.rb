class TenantController < ApplicationController
  set_current_tenant_by_subdomain(:entity, :subdomain, subdomain_lookup: :first)
end

class TenantController < ApplicationController
  set_current_tenant_by_subdomain(:account, :subdomain, subdomain_lookup: :first)
end

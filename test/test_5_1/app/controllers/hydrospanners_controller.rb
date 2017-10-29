class HydrospannersController < ApplicationController
  include Rapido::AppViews

  owner_class :toolbox
  owner_lookup_param :toolbox_name
  owner_lookup_field :name

  resource_lookup_param :name
  resource_permitted_params [:name]

  private

  def authority
    current_user.account
  end
end

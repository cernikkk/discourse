# frozen_string_literal: true

class SidebarUrlSerializer < ApplicationSerializer
  attributes :id, :name, :value, :icon, :external, :segment

  def external
    object.external? || object.full_reload?
  end
end

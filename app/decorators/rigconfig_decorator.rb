class RigconfigDecorator < ApplicationDecorator
  delegate_all

  # Define presentation-specific methods here. Helpers are accessed through
  # `helpers` (aka `h`). You can override attributes, for example:
  #
  def formatted_created_at
    created_at.strftime('%Y-%m-%d %H:%M:%S')
  end

  def formatted_updated_at
    updated_at.strftime('%Y-%m-%d %H:%M:%S')
  end


end

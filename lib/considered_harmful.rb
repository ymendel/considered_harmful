require 'action_controller'

class ActionController::Base
  def goto(*args)
    redirect_to(*args)
  end
end

require 'delegate'
require './email'

class TrackedEmail < DelegateClass(Email)
  def html_part
    super + "<img src=\"\" alt=\"\" />"
  end
end

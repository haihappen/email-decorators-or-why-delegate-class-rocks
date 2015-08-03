require 'delegate'
require './email'

class RedirectedEmail < DelegateClass(Email)
  def html_part
    super.gsub(/href="([^"]*)/, 'href="http://lmgtfy.com/?q=\1')
  end
end

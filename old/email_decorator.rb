require 'active_support/core_ext/module/aliasing'

class EmailDecorator
  def initialize(email)
    @email = email
  end

  def html_part
    @email.html_part
  end

  def html_part_with_tracking
    p 1
    html_part_without_tracking + "<img src=\"\" alt=\"\" />"
  end
  alias_method_chain :html_part, :tracking

  def html_part_with_links
    p 2
    html_part_without_links.gsub(/href="([^"]*)/, 'href="http://lmgtfy.com/?q=\1"')
  end
  alias_method_chain :html_part, :links
end

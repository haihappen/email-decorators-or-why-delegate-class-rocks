class DecoratedEmail < Email
  def html_part
    (super + "<img src=\"\" alt=\"\" />").gsub(/href="([^"]*)/, 'href="http://lmgtfy.com/?q=\1"')
  end
end

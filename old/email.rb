class Email
  def html_part
    <<-HTML
      <p>
        Hello World
        Here is my <a href="http://mariouher.com">site</a>.
      </p>
    HTML
  end
end

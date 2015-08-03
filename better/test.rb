require './email'
require './decorated_email'

email = Email.new
decorated_email = DecoratedEmail.new



puts email.html_part
puts '---' * 10
puts decorated_email.html_part

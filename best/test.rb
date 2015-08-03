require './email'
require './redirected_email'
require './tracked_email'

email = TrackedEmail.new(RedirectedEmail.new(Email.new))
puts email.html_part

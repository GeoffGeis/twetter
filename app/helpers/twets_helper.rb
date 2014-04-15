require 'digest/md5'

module TwetsHelper
  def point_profiles(twet)
    twet.gsub(/(?<!\w)@(\w+)/) { |match| "<a href=\"#{match[1..-1]}\">#{match}</a>" }.html_safe
  end

  def gravatar
    email_address = @user.email.downcase
    hash = Digest::MD5.hexdigest(email_address)
    image_src = "http://www.gravatar.com/avatar/#{hash}"
  end
end

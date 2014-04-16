require 'digest/md5'

module TwetsHelper
  def point_profiles(twet)
    twet.gsub(/(?<!\w)@(\w+)/) { |match| "<a href=\"#{match[1..-1]}\">#{match}</a>" }.html_safe
  end

  def gravatar(email, size = 30)
    hash = Digest::MD5.hexdigest(email.downcase)
    image_src = "http://www.gravatar.com/avatar/#{hash}?s=#{size}"
  end
end

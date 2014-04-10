module TwetsHelper
  def point_profiles(twet)
    twet.gsub(/(?<!\w)@(\w+)/) { |match| "<a href=\"#{match[1..-1]}\">#{match}</a>" }.html_safe
  end
end

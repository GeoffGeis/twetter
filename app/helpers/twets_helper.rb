module TwetsHelper
  def point_profiles(content)
    content.gsub(/@(?<username>(\w+))/, '<a href="'+'\k<username>'+'">@\k<username></a>').html_safe
  end
end

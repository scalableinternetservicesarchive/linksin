module UsersHelper

  # Returns the Gravatar for the given user.
  def gravatar_for(user, options = { size: 48, class: "", style: "" })
    gravatar_id = Digest::MD5::hexdigest(user.email.downcase)
    size = options[:size]
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar #{options[:class]}", style: "#{options[:style]}")
  end
end
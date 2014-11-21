module ApplicationHelper
  def kramdown(text)
    return sanitize Kramdown::Document.new(text).to_html
  end

  def resource_name
    :user
  end

  def resource
    @resource ||= User.new
  end

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end

  def url_with_protocol(url)
    /^http/i.match(url) ? url : "http://#{url}"
  end
end

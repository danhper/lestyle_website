module ApplicationHelper
  def header_link(text, path_name, disable_turbo=false)
    path = send("#{path_name}_path")
    data = { data: { no_turbolink: true} } if disable_turbo
    class_name = "current" if path == request.path
    '<li class="' + class_name.to_s + '">' + link_to(text, path, data) + '</li>'
  end
end

module ApplicationHelper
  def header_link(text, path_name)
    path = send("#{path_name}_path")
    class_name = "current" if path == request.path
    '<li class="' + class_name.to_s + '">' + link_to(text, path) + '</li>'
  end
end

module ApplicationHelper
  def devise_error_messages!
    return '' if resouce.errors.empty?

    message = resource.errors.full_messages.map {
      |msg| content_tag(:li, msg)}.join
      html = <<-HTML
      <div class="alert alert-error alert-danger"><a href="#" class='close' data-dismiss='alert' &#215;></a>
        <%= content_tag :div, msg if msg.id_a?(String) %>
      </div>
      HTML
      html.html_safe
    end
  end

module ApplicationHelper

  # Use within views to set the page's HTML title
  def title(title = nil)
    default = ""

    if title
      content_for(:title) { title }
    else
      content_for?(:title) ? content_for(:title) : default
    end
  end

  # Use within views to set the page's HTML meta description
  def description(text)
    content_for(:description) { text }
  end

  # Displays all flash messages in appropriately named divs for easy styling
  def flash_messages
    messages = flash.keys.collect { |key| flash_message(key, flash[key]) }
    content_tag(:div, messages.to_s.html_safe, :id => "flash-messages")
  end

  # Format a single flash message
  def flash_message(type, message)
    content_tag(:div, :class => "flash-message #{type.to_s}") do
      content_tag :p, message
    end
  end

  def link_to_add_fields(name, f, association, cssClass = nil)
    new_object = f.object.send(association).klass.new
    id = new_object.object_id
    fields = f.fields_for(association, new_object, child_index: id) do |builder|
      render(association.to_s.singularize + "_fields", f: builder)
    end
    link_to(name, '#', class: "add_fields #{cssClass}", data: {id: id, fields: fields.gsub("\n", "")})
  end
end

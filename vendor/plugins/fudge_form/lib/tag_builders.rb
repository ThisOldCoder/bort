ActionView::Base.send :include, FudgeFormHelper

ActionView::Helpers::FormTagHelper.class_eval do
  def text_field_tag_with_builder(name, value = nil, options = {})
    return wrapping('text', name, options[:label], text_field_tag_without_builder(name, value, options), options)
  end  
  alias_method_chain :text_field_tag, :builder

  def password_field_tag_with_builder(name, value = nil, options = {})
    return wrapping('password', name, options[:label], text_field_tag_without_builder(name, value, options), options)
  end
  alias_method_chain :password_field_tag, :builder
end
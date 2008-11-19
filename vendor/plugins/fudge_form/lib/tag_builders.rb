ActionView::Helpers::FormTagHelper.class_eval do
  def text_field_tag_with_builder(name, value = nil, options = {})
    return "FOO #{text_field_tag_without_builder(name, value, options)} BAR"
  end
  
  alias_method_chain :text_field_tag, :builder
end
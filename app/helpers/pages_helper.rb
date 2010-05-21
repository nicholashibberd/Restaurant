module PagesHelper
  def remove_link_unless_new_record(fields)
    unless fields.object.new_record?
      out = ''
      out << fields.hidden_field(:_delete)
      out << link_to_function("remove", "$(this).up('.#{fields.object.class.name.underscore}').hide(); $(this).previous().value = '1'")
      out
    end
  end
  
  # These use the current date, but they could be lots easier.
  # Maybe just keep a global counter which starts at 10 or so.
  # That would be good enough if we only build 1 new record in the controller.
  #
  # And this of course is only needed because Ryan's example uses JS to add new
  # records. If you just build a new one in the controller this is all unnecessary.
  
  def add_element_link(name, form)
    link_to_function name do |page|
      element = render(:partial => 'element', :locals => { :pf => form, :element => Element.new })
      page << %{
        var new_element_id = "new_" + new Date().getTime();
        $('elements').insert({ bottom: "#{ escape_javascript element }".replace(/new_\\d+/g, new_element_id) });
      }
    end
  end
  
  def add_tag_link(name, form)
    link_to_function name do |page|
      tag = render(:partial => 'tag', :locals => { :pf => form, :tag => Tag.new })
      page << %{
        var new_tag_id = "new_" + new Date().getTime();
        $('tags').insert({ bottom: "#{ escape_javascript tag }".replace(/new_\\d+/g, new_tag_id) });
      }
    end
  end
end
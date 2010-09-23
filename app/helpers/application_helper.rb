# Methods added to this helper will be available to all templates in the application.
module ApplicationHelper

  def select_tag_for_filter(model, nvpairs, params)
    options = { :query => params[:query] }
    _url = url_for(eval("#{model}_url(options)"))
    _html = %{<label for="show">Show:</label><br />}
    _html << %{<select name="show" id="show"}
    _html << %{onchange="window.location=window.location + '?' + this.value + '=true'">}
    nvpairs.each do |pair|
      _html << %{<option value="#{pair[:scope]}"}
      if params[:show] == pair[:scope] || ((params[:show].nil? || 
  params[:show].empty?) && pair[:scope] == "all")
        _html << %{ selected="selected"}
      end
      _html << %{>#{pair[:label]}}
      _html << %{</option>}
    end
    _html << %{</select>}
  end
  
  def link_for_filter(model, nvpairs, params)
    _html = %{}
    nvpairs.each do |pair|
      _html << %{#{pair[:label]}}
      _html << %{}
    end
    _html << %{}

   end  
   
   def menu_item(menu_item)
     if params[:id] == menu_item.id.to_s
       options = {'class' => 'selected'}
     else
       options = {}
     end
     
     content_tag(
      'li',
      link_to_unless_current(menu_item.name, :id => menu_item.id),
      options
    )
   end

   def offer_item(offer_item)
     if params[:id] == offer_item.id.to_s
       options = {'class' => 'selected'}
     else
       options = {}
     end
     
     content_tag(
      'li',
      link_to_unless_current(offer_item.title, :id => offer_item.id),
      options
    )
   end

   
end

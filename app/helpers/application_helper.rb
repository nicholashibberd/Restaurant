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

end

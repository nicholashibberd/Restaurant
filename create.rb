  site_theme = 'theivy'
  site_id = 11
  site_name = 'The Ivy'

  require 'fileutils'
  FileUtils.cp("#{RAILS_ROOT}/app/views/layouts/application.html.erb", "#{RAILS_ROOT}/app/views/layouts/#{site_theme}.html.erb")
  FileUtils.cp("#{RAILS_ROOT}/app/views/homepage/_application.html.erb", "#{RAILS_ROOT}/app/views/homepage/_#{site_theme}.html.erb")
  FileUtils.cp("#{RAILS_ROOT}/public/stylesheets/style.css", "#{RAILS_ROOT}/public/stylesheets/#{site_theme}.css")

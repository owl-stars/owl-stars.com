ruby "1.9.3"
source 'http://rubygems.org'

gem "middleman", "~>3.1.5"
gem "middleman-deploy"
gem "middleman-favicon-maker"
gem "middleman-livereload", "~> 3.1.0"

# For faster file watcher updates on Windows:
gem "wdm", "~> 0.1.0", :platforms => [:mswin, :mingw]

# Cross-templating language block fix for Ruby 1.8
platforms :mri_18 do
  gem "ruby18_source_location"
end
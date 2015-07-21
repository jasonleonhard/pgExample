# A sample Guardfile
# More info at https://github.com/guard/guard#readme

## Uncomment and set this to only include directories you want to watch
# directories %w(app lib config test spec features) \
#  .select{|d| Dir.exists?(d) ? d : UI.warning("Directory #{d} does not exist")}

## Note: if you are using the `directories` clause above and you are not
## watching the project directory ('.'), then you will want to move
## the Guardfile to a watched dir and symlink it back, e.g.
#  $ mkdir config
#  $ mv Guardfile config/
#  $ ln -s config/Guardfile .
# and, you'll have to watch "config/Guardfile" instead of "Guardfile"
guard 'livereload' do
  watch(%r{app/views/.+\.(erb|haml|slim)$})
  watch(%r{app/helpers/.+\.rb})
  watch(%r{public/.+\.(css|js|html)})
  watch(%r{config/locales/.+\.yml})
  # Rails Assets Pipeline
  #watch(%r{(app|vendor)(/assets/\w+/(.+\.(css|js|html|png|jpg))).*}) { |m| "/assets/#{m[3]}" }
  watch %r{^.*\.(html|css|js|png|jpg)$}
end
# NOT WORKING WHY? guard 'sass', :input = > 'sass', :output = > '/app/assets/stylesheets'
# WORKING but just moved folder for next line:  
  # guard 'sass', :input = > 'sass', :output = > 'css'
#guard 'sass', :input = > '/pgExample/app/assets/stylesheets', :output = > '/pgExample/app/assets/stylesheets'
#guard 'sass', :input = > 'app/assets/stylesheets', :noop = > true
#guard 'sass', :input = > 'app/stylesheets', :output = > 'public/stylesheets'
#guard 'sass', :input = > 'app/assets/stylesheets/sass'
#guard 'sass', :input = > 'scss', :output = > 'css'
guard 'sass', :input => 'sass', :output => 'css'
  # note this does not output a .css file but still does change style overall
    # ie in buttons.sass if you put this in styles change but need to refresh still?
      #.button
      #  background: blue
      #h1
      #  background: blue
      #  color: green
      #th
      #  color: red
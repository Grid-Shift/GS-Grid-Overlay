# Guardfile
# More info at https://github.com/guard/guard#readme

# Sample guardfile block for Guard::Haml
# You can use some options to change guard-haml configuration
# output: 'public'                   set output directory for compiled files
# input: 'src'                       set input directory with haml files
# run_at_start: true                 compile files when guard starts
# notifications: true                send notifictions to Growl/libnotify/Notifu
# haml_options: { ugly: true }    pass options to the Haml engine


guard 'coffeescript', input: 'sources/scripts', output: "app/scripts"
guard 'sass', input: 'sources/styles', output: 'app/styles'

guard :haml, input: "sources/views", output: "app/views" do
  watch(/^.+(\.html\.haml)$/)
end

current_dir = File.expand_path(__dir__)
cookbook_path = "#{current_dir}/cookbooks"
always_dump_stacktrace true
minimal_ohai true
log_level :info
log_location STDOUT

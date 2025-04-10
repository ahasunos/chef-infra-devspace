#
# Cookbook:: example_cookbook
# Recipe:: default
#
# Copyright:: 2025, The Authors, All Rights Reserved.

execute 'echo_hello' do
  command 'echo "Hello, Chef!"'
  action :run
end

file "/tmp/foo" do
  verify { |path| File.exist?(path) }
  content "foo chef in cookbook"
end

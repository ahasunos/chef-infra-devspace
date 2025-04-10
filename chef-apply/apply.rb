file "/tmp/foo.txt" do
  content "foo chef apply"
end

execute 'echo_hello' do
  command 'echo "Hello, Chef!"'
  action :run
end

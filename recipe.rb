# recipe.rb

package "ruby" do
  user "root"
end

remote_file "/usr/local/bin/hello" do
  source "./files/hello.rb"
  user "root"
end

execute "add hello to profile" do
  command "echo hello >> /etc/profile"
  user "root"
  not_if "grep hello /etc/profile"
end

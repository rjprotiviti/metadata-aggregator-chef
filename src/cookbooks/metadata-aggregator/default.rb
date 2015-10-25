directory '/root' do
 user 'root'
 group 'root'
 mode '0700'
end

if Dir.exists?('/etc/git/metadata-aggregator') then
 directory '/etc/git/HelloWorldChef' do
  recursive true
  action :delete
 end
else
 if Dir.exists?('/etc/git') then
  directory '/etc/git' do
   owner 'root'
   group 'root'
   mode '0755'
   action :create
  end
 end
 directory '/etc/git/metadata-aggregator' do
  owner 'root'
  group 'root'
  mode '0755'
  action :create
 end
end

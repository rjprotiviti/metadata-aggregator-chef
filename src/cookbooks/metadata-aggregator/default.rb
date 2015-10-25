  directory '/root' do
   user 'root'
   group 'root'
   mode '0700'
  end

   directory '/etc/repos/metadata-aggregator' do
    owner 'root'
    group 'root'
    mode '0755'
    action :create
   end

  git '/etc/git/metadata-aggregator' do
    repository 'https://metadata-aggregator:<token>@github.com/GSA/metadata-aggregator.git'
    revision 'master'
    user 'root'
    action :sync
  end

action :create do
  execute "curl" do
    command "sudo curl https://staticdownloads.site24x7.com//server//#{new_resource.package} > /tmp/site24x7agent/#{new_resource.package}"
    not_if{ ::File.exists?("/opt/site24x7/monagent") }
  end
end

action :install do
if new_resource.proxy.empty?
  bash "site24x7_install" do
    cwd
    user "root"
    code <<-EOH
    sudo /tmp/site24x7agent/#{new_resource.package} -i -key=#{new_resource.key} -f
     EOH
    action :run
    not_if{ ::File.exists?( "/opt/site24x7/monagent" ) } 
  end
else
  bash "site24x7_install" do
    cwd 
    user "root"
    code <<-EOH
    sudo /tmp/site24x7agent/#{new_resource.package} -i -key=#{new_resource.key} -proxy=#{new_resource.proxy} -f
     EOH
    action :run
    not_if{ ::File.exists?( "/opt/site24x7/monagent" ) } 
  end
end
end

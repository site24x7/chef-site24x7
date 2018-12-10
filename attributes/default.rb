# api key attribute
default['Site24x7']['devicekey'] = 'YOUR_USER_DEVICE_KEY'
default['Site24x7']['proxy'] = ''

# package identification
if node['kernel']['machine'] == 'i686'
  default['package'] = 'Site24x7_Linux_32bit.install'
elsif node['kernel']['machine'] == 'i386'
  default['package'] = 'Site24x7_Linux_64bit.install'
end

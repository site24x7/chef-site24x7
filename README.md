Community Page

Chef Cookbook for Site24x7 services
===========

This Chef Cookbook installs Site24x7 server monitoring agent on Linux platforms. This 
requires Site24x7 account to use. Sign Up Now for a Free Trial  


Supported Platforms 
============

All Linux platforms with Glibc version - 2.5 and above,  including Centos, Debian, Fedora, 
Redhat, Suse, Ubuntu


Requirements
============

Chef 10 and above


Attributes
==========

`default[:Site24x7][:APIkey]` = Your API Key is available under the Site24x7 Add Server 
Monitor page. Log In and navigate to Home > New Monitor > Server Monitor. Choose 
Server Monitor Type as Linux. 

Site24x7 API key is unique for your account. Alternately API Key can also be generated from 
your Site24x7 account under Account > Generate API Key.  

`default[:Site24x7][:proxy]` = Proxy server required to connect to the Site24x7 servers. Example 
: user:password@proxyhost:proxyport 


Installation Steps
==========
 Download the Site24x7 cookbook into your `chef-repo/cookbooks/site24x7` directory: (the cookbook directory name must be site24x7)
https://github.com/site24x7/chef-site24x7 

 Set your apikey as described in the `Attributes section`. Edit `site24x7/attributes/default.rb` and replace  YOUR_USER_API_KEY with your unique Site24x7 API Key. 

	* `default[:Site24x7][:APIkey]` = "YOUR_USER_API_KEY"

 Set proxy attribute if necessary

	* `default[:Site24x7][:proxy]` = "user:password@proxyhost:proxyport"

 Upload the cookbook to your chef server or hosted chef

	* `knife cookbook upload site24x7`

 Include recipe[site24x7] in the run_list for all of your servers.

	* `knife node run_list add NODES 'recipe[site24x7]'`


 Run chef-client on your nodes in whatever manner suits you, such as

	* `sudo chef-client -i 3600 -s 600` or a batch job.

 View your servers from your Site24x7 account. `https://www.site24x7.com/login.html'


Related Links
=====
* Site24x7 Homepage (http://www.site24x7.com)
* Site24x7 Signup (https://www.site24x7.com/signup.html?pack=5&l=en)
* Site24x7 Help Documentation (https://help.site24x7.com/add-linux-server-monitor.html)


License
=======

(The MIT License)

Copyright © 2014, 2015 Site24x7
Terms of Use (http://www.site24x7.com/terms.html)
Privacy Policy (http://www.site24x7.com/privacypolicy.html)
Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without
limitation the rights to use, copy, modify, merge, publish, distribute,
sublicense, and/or sell copies of the Software, and to permit persons
to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included
in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS
OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NON-INFRINGEMENT. IN NO EVENT SHALL
THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR
OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE,
ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR
OTHER DEALINGS IN THE SOFTWARE.




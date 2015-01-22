#
# Cookbook Name:: eclipse-windows
# Recipe:: default
#
# Copyright (C) 2015 Lonnie VanZandt
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#    http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

include_recipe "chocolatey"

chocolatey 'java.jdk'
chocolatey 'maven'
chocolatey 'git'
chocolatey 'eclipse'

chocolatey 'virtualbox'

chocolatey 'ruby'
chocolatey 'ruby2.devkit'
chocolatey 'rubygems'

chocolatey 'vagrant'

chocolatey 'putty'

# find where choco installed Ruby2
#rubyDir = Dir.glob("/bin/**/ruby").first()
# find where choco installed Ruby2 DevKit
#devKitDir = Dir.glob("/bin/**/DevKit2").first()

# now overwrite its config.yml file
#configFile = Pathname.new( devKitDir ).join( "config.yml" )

#template configFile.to_s do
#  source "ruby2devkit-config.yml.erb"
#  variables({
#     :rubyDir => rubyDir.to_s
#  })
#end
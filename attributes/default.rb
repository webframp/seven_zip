#
# Author:: Seth Chisamore (<schisamo@chef.io>)
# Cookbook Name:: seven_zip
# Attribute:: default
#
# Copyright:: Copyright (c) 2011-2016 Chef Software, Inc.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

if kernel['machine'] =~ /x86_64/
  default['seven_zip']['url']          = "http://www.7-zip.org/a/7z920-x64.msi"
  default['seven_zip']['checksum']     = "62df458bc521001cd9a947643a84810ecbaa5a16b5c8e87d80df8e34c4a16fe2"
  default['seven_zip']['package_name'] = "7z920-x64.msi"
else
  default['seven_zip']['url']          = "http://www.7-zip.org/a/7z920.msi"
  default['seven_zip']['checksum']     = "fe4807b4698ec89f82de7d85d32deaa4c772fc871537e31fb0fccf4473455cb8"
  default['seven_zip']['package_name'] = "7z920.msi"
end

default['seven_zip']['home']    = "#{ENV['SYSTEMDRIVE']}\\7-zip"

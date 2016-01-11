seven_zip Cookbook
==============
[7-Zip](http://www.7-zip.org/) is a file archiver with a high compression ratio. This cookbook installs the full 7-zip suite of tools (GUI and CLI).


Requirements
------------
### Platform
- Windows XP
- Windows Vista
- Windows Server 2003 R2
- Windows 7
- Windows Server 2008 (R1, R2)
- Windows 8
- Windows Server 2012

### Cookbooks
- windows


Attributes
----------
- `node['seven_zip']['home']` - location to install 7-zip files to.  default is `%SYSTEMDRIVE%\7-zip`


Usage
-----
### default
Downloads and installs 7-zip to the location specified by `node['seven_zip']['home']`.  Also ensures `node['seven_zip']['home']` is in the system path.

Resource/Provider
-----------------
### seven_zip_archive
#### Actions
- `:extract` - Extract a 7-zip supported archive

#### Attribute Parameters
- `path` - name attribute. The destination path to extract the archive to
- `source` - archive to extract, local file or remote url
- `overwrite` - overwrite destination path if it exists
- `checksum` - sha256 checksum of the archive

#### Examples
Extract a Github release zip to a temporary location

```ruby
seven_zip_archive "C:\\temp\\chefdk_bootstrap" do
  source 'https://github.com/Nordstrom/chefdk_bootstrap/archive/v1.4.1.zip'
  action :extract
end
```

License & Authors
-----------------
- Author:: Seth Chisamore (<schisamo@chef.io>)

```text
Copyright:: 2011-2016, Chef Software, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
```

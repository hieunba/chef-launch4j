#
# Cookbook:: launch4j
# Recipe:: default
#
# Copyright:: 2018, Nghiem Ba Hieu
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

chef_cache_path = Chef::Config[:file_cache_path]

windows_package 'launch4j' do
  source 'https://sourceforge.net/projects/launch4j/files/launch4j-3/3.12/launch4j-3.12-win32.exe/download'
  remote_file_attributes(
    path: ::File.join(chef_cache_path, 'launch4j-3.12-win32.exe'),
    checksum: 'bce15b1efc83f46df804677fbf3aa6bdf196934546cb98b76f06f7e19e87ce51'
  )
  action :install
end

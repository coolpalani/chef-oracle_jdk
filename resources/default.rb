#
# Cookbook Name:: oracle_jdk
# Resource:: default
#
# Copyright 2014 Brian Clark
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

actions :install, :remove
default_action :install

attribute :url, kind_of: String, required: true
attribute :checksum, kind_of: String, required: true
attribute :path, kind_of: String, default: '/usr/lib/jvm'
attribute :owner, kind_of: String, default: 'root'
attribute :group, kind_of: String
attribute :mode, kind_of: String, default: '0755'
attribute :set_alternatives, equal_to: [true, false], default: true
attribute :priority, kind_of: Integer

attribute :home, kind_of: String
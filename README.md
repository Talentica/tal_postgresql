

## tal_postgresql

A postgresql installation cookbook that addresses the issue of server password setup through recipe of the community cookbook https://github.com/hw-cookbooks/postgresql.git and resolves it to install postgresql server.

###Platforms

    Debian, Ubuntu
    Red Hat/CentOS/Scientific (6.0+ required) - "EL6-family"
    Fedora
    SUSE

###Tested on:

    Ubuntu 12.04, 14.04, 14.10

###Usage
On systems that should be PostgreSQL servers, use recipe[postgresql::server] on a run list.

License and Author

    Author:: Talentica/shantanupanda
    

Licensed under the Apache License, Version 2.0 (the "License"); you may not use this file except in compliance with the License. You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software distributed under the License is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the License for the specific language governing permissions and limitations under the License.

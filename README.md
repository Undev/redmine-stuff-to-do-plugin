# Redmine Stuff To Do Plugin

The Stuff To Do plugin allows a user to order and prioritize the issues and projects they are doing into a specific order. It will also allow other privileged users to reorder the user's workload.

The initial autor is []().

== Features

* Sorting and prioritizing of cross-project To Do lists
* Easy to use drag and drop interface
* Editing other user lists for Administrators
* Filtering of issues based on user, priority, or status
* Notification emails based on low workload counts
* Drag and drop time logging using the Time Grid

== Getting the plugin

A copy of the plugin can be downloaded from {Little Stream Software}[https://projects.littlestreamsoftware.com/projects/redmine-stuff-to-do/files] or from {GitHub}[http://github.com/edavis10/redmine-stuff-to-do]


## Installation

1. To install the plugin
    * Download the .ZIP archive, extract files and copy the plugin directory into #{REDMINE_ROOT}/plugins/stuff_to_do_plugin
    
    Or

    * Change you current directory to your Redmine root directory:  

            cd {REDMINE_ROOT}
            
      Copy the plugin from GitHub using the following commands:
      
            git clone https://github.com/Undev/redmine-stuff-to-do-plugin.git plugins/stuff_to_do_plugin
            
2. This plugin requires a migration. Run the following command to upgrade your database (make a database backup before):  

        bundle exec rake redmine:plugins:migrate RAILS_ENV=production
            
3. Restart Redmine.

Now you should be able to see the plugin in **Administration > Plugins**.


## Usage

To configure the plugin, go to **Administration > Plugins** and click **Configure**.

The plugin adds the **Stuff To Do** link to the top menu in Redmine.

Clicking the **Stuff To Do** link opens the page with three panes that can be sorted:

### What I'm doing now

This pane lists the next 5 items a user is supposed to be working on.  These items should be the *most* important things assigned to the user.  As the user closes an item, the items lower in the list will rise up and fill in this pane.  Items are closed by either closing the issue (Issues) or archiving a project (Project)

### What's recommended to do next

This pane lists extra items for the user.  These items are used as overflow for the What I'm doing now.

### What's available

This pane lists all the open issues that are assigned to the user or the projects visible to the user.  They are the pool of things that a user can draw on as they work.

### Workflow

The standard workflow for this plugin is as follows:

1. A user will drag items from the What's Available pane to the What I'm doing now and What's recommended to do next
2. Once several items have been dragged the user would prioritize and sort the items in order of importance
3. The user would use the rest of Redmine and work on the #1 item
4. Once the #1 item is complete (or blocked) the user would continue and work on the #2 item

If the user is an Administrator, they have the permission to edit other users' lists.  This allows them to act as the system Project Manager.


Description

Справа на этой странице показан список (переведенных на меня) доступных задач
http://pm.undev.cc/stuff_to_do

Я им ежеденвно, ежечасно пользуюсь, но только сейчас понял, что в нем не удобно.
Каждая новая приходящая задача попадает в список в любое его место. В начало, в середину, в конец.
Я не могу быть уверен, что последняя пришедшая задача сверху. Сверху всегда задача с большим ID. То есть, та, которая позже создана.

Гораздо удобнее было бы сортировать это поле по дате обновления задачи.
Тогда последняя переведенная на меня задача автоматически будет в начале списка, а переведенная два месяца назад и оставленная в статусе on hold — в самом конце списка.

--- сортировка по дате работает, проверено

## License

Copyright (c) 2015 Undev

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.

== Project help

If you need help you can contact the maintainer at his email address (See CREDITS.txt) or create an issue in the Bug Tracker.  The bug tracker is located at  https://projects.littlestreamsoftware.com


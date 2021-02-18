# clear_archived_data

## How to create custom fastlane plugin?
Open your terminal, cd to some any folder then
```bash
fastlane new_plugin [plugin_name]
```
Fastlane will create the directory and the folders you need.

Then navigate to lib -> fastlane -> plugin_name.rb edit and add your action here.

Add created directory to your github as a public.

## Publishing plugin
First you need to have an acoount on [RubyGems.org](https://rubygems.org)  

Update spec.homepage to show your github plugin url in fastlane-plugin-[plugin_name].gemspec file

## Time to release
Open terminal again, go to your directory and into fastlane-plugin-[plugin_name] folder

```bash
bundle install
rake install
rake release
```

You will get an email from Ruby that your plugin is published to everyone :)

## Updating plugin action
After you updated plugin_name.rb
you need to go to your directory and into fastlane-plugin-[plugin_name] folder in terminal
and you should update by using:
```bash
rake release
```

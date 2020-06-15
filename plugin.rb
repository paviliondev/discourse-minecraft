# frozen_string_literal: true

# name: discourse-minecraft
# about: Intergrate Discourse with Minecraft
# version: 0.1
# authors: Angus McLeod
# url: https://github.com/paviliondev/discourse-minecraft

enabled_site_setting :minecraft_enabled

after_initialize do
  [
    '../lib/minecraft/engine.rb',
    '../controllers/minecraft/user.rb',
    '../config/routes.rb'
  ].each do |path|
    load File.expand_path(path, __FILE__)
  end
  
  register_editable_user_custom_field :minecraft_username
  whitelist_public_user_custom_field :minecraft_username
end
DiscourseMinecraft::Engine.routes.draw do
  get 'users/:username.json' => "user#authenticate"
end

Discourse::Application.routes.prepend do
  mount ::DiscourseMinecraft::Engine, at: 'minecraft'
end
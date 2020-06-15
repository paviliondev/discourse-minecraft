module ::DiscourseMinecraft
  PLUGIN_NAME = "discourse-minecraft".freeze

  class Engine < ::Rails::Engine
    engine_name PLUGIN_NAME
    isolate_namespace DiscourseMinecraft
  end
end
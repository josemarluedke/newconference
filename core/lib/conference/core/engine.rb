module Conference
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Conference

      config.generators do |g|
        g.test_framework  :rspec
      end
    end
  end
end

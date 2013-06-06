module Newconference
  module Core
    class Engine < ::Rails::Engine
      isolate_namespace Newconference

      config.generators do |g|
        g.test_framework  :rspec
      end
    end
  end
end

require 'mackerel/client'

module Ruboty
  module Handlers
    class Mackerel < Base
      env :MACKEREL_APIKEY, "Mackerel API key", optional: false

      on(
        /mkr $/,
        name: '',
        all: true,
        description: ''
      )

      def foo(message)
        Ruboty::Mackerel::Actions::Mackerel.new(message).foo
      end
    end
  end
end

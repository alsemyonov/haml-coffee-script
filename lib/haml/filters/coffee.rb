require 'haml'
require 'haml/filters'

module Haml
  module Filters
    module Coffee
      include Base
      lazy_require 'coffee-script'

      def compile(compiler, text)
        rendered = CoffeeScript.compile(text)
        compiler.instance_eval do
          push_text(options[:ugly] ?
                    rendered.rstrip :
                    rendered.rstrip.gsub("\n", "\n#{'  ' * @output_tabs}"))
        end
      end
    end
  end
end

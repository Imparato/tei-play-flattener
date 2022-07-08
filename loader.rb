require "zeitwerk"

loader = Zeitwerk::Loader.new
loader.push_dir("models")
loader.inflector.inflect "tei_header" => "TEIHeader"
loader.setup # ready!

require "active_support/core_ext/module/delegation"

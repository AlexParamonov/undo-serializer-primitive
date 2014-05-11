require "spec_helper_lite"
require "undo"
require 'undo/integration/shared_undo_integration_examples.rb'

Undo.configure do |config|
  config.serializer = Undo::Serializer::Primitive.new
end

describe Undo do
  include_examples "undo integration"
end

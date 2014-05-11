require "spec_helper_lite"

describe Undo::Serializer::Primitive do
  primitives = [nil, {}, [], [nil, nil], true, false, 1, 1.0, "hello", :world]

  primitives .each do |input|
    input_name = input.inspect
    specify "restore #{input_name}" do
      expect(subject.deserialize subject.serialize(input)).to eq input
    end
  end

  describe "json storage" do
    require "json"
    primitives.each do |input|
      input_name = input.inspect

      specify "restore #{input_name}" do
        storage = -> object { JSON.load(object.to_json) }
        data = storage.call subject.serialize(input)
        expect(subject.deserialize data).to eq input
      end
    end
  end

  describe ".serialize?" do
    it "is true for primitives" do
      [true, nil, 1, 1.0, "hello", :hello].each do |primitive|
        expect(subject.serialize? primitive).to be true
      end
    end

    it "is true for empty array and hash" do
      [[], {}].each do |primitive|
        expect(subject.serialize? primitive).to be true
      end
    end

    it "is false for objects" do
      expect(subject.serialize? Object.new).to be false
    end
  end
end

require "./spec_helper"
require "random"

describe Failure do
  it "works" do
    r = Random.new
    foo : String?

    if r.next_bool
      foo = "hello"
    else
      foo = nil
    end

    output = "foo"

    foo
      .attempt { |f| output = f }
      .fail { output = "hello" }

    output.should eq("hello")
  end
end

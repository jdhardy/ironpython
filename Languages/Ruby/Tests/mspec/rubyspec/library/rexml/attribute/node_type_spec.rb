require File.dirname(__FILE__) + '/../../../spec_helper'
require 'rexml/document'

describe "REXML::Attribute#node_type" do
  it "always returns :attribute" do
    attr = REXML::Attribute.new("foo", "bar")
    attr.node_type.should == :attribute
    REXML::Attribute.new(attr).node_type.should == :attribute
  end
end

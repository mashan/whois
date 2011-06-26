# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.jprs.jp/jp/property_expires_on_missing.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.jprs.jp.rb'

describe Whois::Record::Parser::WhoisJprsJp, "property_expires_on_missing.expected" do

  before(:each) do
    file = fixture("responses", "whois.jprs.jp/jp/property_expires_on_missing.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#expires_on" do
    it do
      @parser.expires_on.should == nil
    end
  end
end

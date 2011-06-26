# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.denic.de/schema-1.10.0/status_registered.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake genspec:parsers
#

require 'spec_helper'
require 'whois/record/parser/whois.denic.de.rb'

describe Whois::Record::Parser::WhoisDenicDe, "status_registered.expected" do

  before(:each) do
    file = fixture("responses", "whois.denic.de/schema-1.10.0/status_registered.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#disclaimer" do
    it do
      @parser.disclaimer.should == "All the domain data that is visible in the whois search is protected by law. It is not permitted to use it for any purpose other than technical or administrative requirements associated with the operation of the Internet or in order to contact the domain holder over legal problems. You are not permitted to save it electronically or in any other way without DENIC's express written permission. It is prohibited, in particular, to use it for advertising or any similar purpose. By maintaining the connection you assure that you have a legitimate interest in the data and that you will only use it for the stated purposes. You are aware that DENIC maintains the right to initiate legal proceedings against you in the event of any breach of this assurance and to bar you from using its whois query."
    end
  end
  describe "#domain" do
    it do
      @parser.domain.should == "google.de"
    end
  end
  describe "#domain_id" do
    it do
      lambda { @parser.domain_id }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#status" do
    it do
      @parser.status.should == :registered
    end
  end
  describe "#available?" do
    it do
      @parser.available?.should == false
    end
  end
  describe "#registered?" do
    it do
      @parser.registered?.should == true
    end
  end
  describe "#created_on" do
    it do
      lambda { @parser.created_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#updated_on" do
    it do
      @parser.updated_on.should be_a(Time)
      @parser.updated_on.should == Time.parse('2009-02-28 12:03:09 +01:00')
    end
  end
  describe "#expires_on" do
    it do
      lambda { @parser.expires_on }.should raise_error(Whois::PropertyNotSupported)
    end
  end
  describe "#registrar" do
    it do
      @parser.registrar.should be_a(_registrar)
      @parser.registrar.id.should           == nil
      @parser.registrar.name.should         == "Domain Billing"
      @parser.registrar.organization.should == "MarkMonitor"
    end
  end
  describe "#registrant_contacts" do
    it do
      @parser.registrant_contacts.should be_a(Array)
      @parser.registrant_contacts.should have(1).items
      @parser.registrant_contacts[0].should be_a(_contact)
      @parser.registrant_contacts[0].type.should         == Whois::Record::Contact::TYPE_REGISTRANT
      @parser.registrant_contacts[0].id.should           == nil
      @parser.registrant_contacts[0].name.should         == "Google Inc."
      @parser.registrant_contacts[0].city.should         == "Mountain View"
      @parser.registrant_contacts[0].zip.should          == "94043"
      @parser.registrant_contacts[0].state.should        == nil
      @parser.registrant_contacts[0].phone.should        == nil
      @parser.registrant_contacts[0].fax.should          == nil
      @parser.registrant_contacts[0].email.should        == nil
    end
  end
  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(_contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].id.should           == nil
      @parser.admin_contacts[0].name.should         == "Lena Tangermann"
      @parser.admin_contacts[0].organization.should == "Google Germany GmbH"
      @parser.admin_contacts[0].address.should      == "ABC-Strasse 19"
      @parser.admin_contacts[0].city.should         == "Hamburg"
      @parser.admin_contacts[0].zip.should          == "20354"
      @parser.admin_contacts[0].state.should        == nil
      @parser.admin_contacts[0].phone.should        == nil
      @parser.admin_contacts[0].fax.should          == nil
      @parser.admin_contacts[0].email.should        == nil
    end
  end
  describe "#technical_contacts" do
    it do
      @parser.technical_contacts.should be_a(Array)
      @parser.technical_contacts.should have(1).items
      @parser.technical_contacts[0].should be_a(_contact)
      @parser.technical_contacts[0].type.should         == Whois::Record::Contact::TYPE_TECHNICAL
      @parser.technical_contacts[0].id.should           == nil
      @parser.technical_contacts[0].name.should         == "Google Inc."
      @parser.technical_contacts[0].city.should         == "Mountain View"
      @parser.technical_contacts[0].zip.should          == "94043"
      @parser.technical_contacts[0].state.should        == nil
      @parser.technical_contacts[0].phone.should        == "+1-6503300100"
      @parser.technical_contacts[0].fax.should          == "+1-6506188571"
      @parser.technical_contacts[0].email.should        == "dns-admin@google.com"
    end
  end
  describe "#nameservers" do
    it do
      @parser.nameservers.should be_a(Array)
      @parser.nameservers.should have(4).items
      @parser.nameservers[0].should be_a(_nameserver)
      @parser.nameservers[0].name.should == "ns1.google.com"
      @parser.nameservers[1].should be_a(_nameserver)
      @parser.nameservers[1].name.should == "ns4.google.com"
      @parser.nameservers[2].should be_a(_nameserver)
      @parser.nameservers[2].name.should == "ns3.google.com"
      @parser.nameservers[3].should be_a(_nameserver)
      @parser.nameservers[3].name.should == "ns2.google.com"
    end
  end
end

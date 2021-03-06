#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2013 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base'


module Whois
  class Record
    class Parser

      #
      # = whois.nic.ch parser
      #
      # Parser for the whois.nic.ch server.
      #
      # NOTE: This parser is just a stub and provides only a few basic methods
      # to check for domain availability and get domain status.
      # Please consider to contribute implementing missing methods.
      # See WhoisNicIt parser for an explanation of all available methods
      # and examples.
      #
      class WhoisNicCh < Base

        property_supported :status do
          if available?
            :available
          else
            :registered
          end
        end

        property_supported :available? do
          !!(content_for_scanner =~ /We do not have an entry/)
        end

        property_supported :registered? do
          !available?
        end


        property_not_supported :created_on

        property_not_supported :updated_on

        property_not_supported :expires_on


        # Nameservers are listed in the following formats:
        #
        #   ns1.citrin.ch
        #   ns1.citrin.ch  [193.247.72.8]
        #
        property_supported :nameservers do
          if content_for_scanner =~ /Name servers:\n((.+\n)+)(?:\n|\z)/
            list  = {}
            order = []
            $1.split("\n").map do |line|
              if line =~ /(.+)\t\[(.+)\]/
                name, ip = $1, $2
                order << name unless order.include?(name)
                list[name] ||= Record::Nameserver.new(:name => name)
                list[name].ipv4 = ip if Whois::Server.valid_ipv4?(ip)
                list[name].ipv6 = ip if Whois::Server.valid_ipv6?(ip)
              else
                order << line unless order.include?(line)
                list[line] ||= Record::Nameserver.new(:name => line)
              end
            end
            order.map { |name| list[name] }
          end
        end

      end

    end
  end
end

#--
# Ruby Whois
#
# An intelligent pure Ruby WHOIS client and parser.
#
# Copyright (c) 2009-2013 Simone Carletti <weppos@weppos.net>
#++


require 'whois/record/parser/base_afilias'


module Whois
  class Record
    class Parser

      # Parser for the whois.dotpostregistry.net server.
      #
      # @see Whois::Record::Parser::Example
      #   The Example parser for the list of all available methods.
      #
      class WhoisDotpostregistryNet < BaseAfilias
      end

    end
  end
end

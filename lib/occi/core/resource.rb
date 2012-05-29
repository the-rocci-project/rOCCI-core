##############################################################################
#  Copyright 2011 Service Computing group, TU Dortmund
#
#  Licensed under the Apache License, Version 2.0 (the "License");
#  you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
#  Unless required by applicable law or agreed to in writing, software
#  distributed under the License is distributed on an "AS IS" BASIS,
#  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#  See the License for the specific language governing permissions and
#  limitations under the License.
##############################################################################

##############################################################################
# Description: OCCI Core Resource
# Author(s): Hayati Bice, Florian Feldhaus, Piotr Kasprzak
##############################################################################

require 'occi/registry'
require 'occi/core/entity'
require 'occi/core/kind'
require 'hashie'

module OCCI
  module Core
    class Resource < Entity

      def self.register
        data = Hashie::Mash.new
        data[:related] = %w{http://schemas.ogf.org/occi/core#entity}
        data[:term] = "resource"
        data[:scheme] = "http://schemas.ogf.org/occi/core#"
        data[:title] = "Resource"

        data.attributes!.occi!.core!.summary!.type = "string"
        data.attributes!.occi!.core!.summary!.pattern = ".*"
        data.attributes!.occi!.core!.summary!.required = false
        data.attributes!.occi!.core!.summary!.mutable = true

        kind = OCCI::Core::Kind.new(data)
        OCCI::Registry.register(kind)
      end

      def summary
        return self[:summary]
      end

      def summary=(summary)
        self[:summary] = summary
        self.attributes!.occi!.core!.summary = summary
      end

      def convert_value(val, duping=false) #:nodoc:
        case val
          when self.class
            val.dup
          when ::Hash
            val = val.dup if duping
            self.class.subkey_class.new.merge(val) unless val.kind_of?(Hashie::Mash)
            val
          when Array
            val.collect { |e| convert_value(e) }
          else
            val
        end
      end

    end
  end
end
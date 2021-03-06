require 'occi/core/renderers/text/base'

module Occi
  module Core
    module Renderers
      module Text
        # Implements methods needed to render instance attributes to text-based
        # renderings. This class (its instances) is usually called directly from
        # other classes in this module and not from the "outside".
        #
        # @author Boris Parak <parak@cesnet.cz
        class Attributes < Base
          # Attribute key constant
          ATTRIBUTE_KEY = 'X-OCCI-Attribute'.freeze

          # Known primitive attribute value types
          PRIMITIVE_TYPES = [String, Numeric, Integer, Float, Boolean].freeze
          IP_TYPES        = [IPAddr].freeze
          QUOTABLE_TYPES  = [URI].freeze
          JSONABLE_TYPES  = [Array, Hash].freeze

          # Renders `object` into plain text and returns the result
          # as `String`.
          #
          # @return [String] textual representation of Object
          def render_plain
            prepare_instance_attributes.collect { |attrb| "#{ATTRIBUTE_KEY}: #{attrb}" }.join("\n")
          end

          # Renders `object` into text for headers and returns the result
          # as `Hash`.
          #
          # @return [Hash] textual representation of Object for headers
          def render_headers
            { ATTRIBUTE_KEY => prepare_instance_attributes }
          end

          private

          # :nodoc:
          def prepare_instance_attributes
            object.select { |_, attribute| attribute.value? }
                  .collect { |name, attribute| "#{name}=#{prepare_instance_attribute(name, attribute)}" }
          end

          # :nodoc:
          def prepare_instance_attribute(name, attribute)
            unless attribute.respond_to?(:attribute_definition)
              raise Occi::Core::Errors::RenderingError, "Attribute #{name} does " \
                    'not expose its definition'
            end
            attr_def = attribute.attribute_definition
            valid_definition! name, attr_def

            prepare_instance_attribute_value(name, attr_def.type, attribute.value)
          end

          # :nodoc:
          def valid_definition!(name, attribute_definition)
            unless attribute_definition
              raise Occi::Core::Errors::RenderingError, 'Cannot render attribute ' \
                    "#{name} without a definition"
            end

            return if attribute_definition.type
            raise Occi::Core::Errors::RenderingError, 'Cannot render attribute ' \
                  "#{name} without a type"
          end

          # :nodoc:
          def prepare_instance_attribute_value(name, type, value)
            if ancestor_match?(IP_TYPES, type)
              value.host? ? "\"#{value}\"" : "\"#{value}/#{value.cidr_mask}\""
            elsif ancestor_match?(QUOTABLE_TYPES, type)
              "\"#{value}\""
            elsif ancestor_match?(JSONABLE_TYPES, type)
              value.to_json.inspect
            elsif ancestor_match?(PRIMITIVE_TYPES, type)
              value.inspect
            else
              raise Occi::Core::Errors::RenderingError, "Value #{value.inspect} " \
                    "for attribute #{name} cannot be rendered to text"
            end
          end

          # :nodoc:
          def ancestor_match?(defined_types, type)
            (defined_types & type.ancestors).any?
          end
        end
      end
    end
  end
end

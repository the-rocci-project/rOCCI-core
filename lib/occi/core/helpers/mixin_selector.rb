module Occi
  module Core
    module Helpers
      # Introduces mixin-based helpers to every receiver
      # class. Provides methods to access mixin sub-sets
      # defined by dependencies.
      #
      # @author Boris Parak <parak@cesnet.cz>
      module MixinSelector
        # Selects a set of mixins defined by a common dependence. This dependence
        # must be provided as `filter` and be an instance of `Occi::Core::Mixin` or
        # its subclass.
        #
        # @param filter [Occi::Core::Mixin] mixin to filter by
        # @return [Set] found mixins
        def select_mixins(filter)
          Set.new(mixins.select { |m| m.depends?(filter) })
        end

        # Selects at most one mixin defined by the given dependence. This dependence
        # must be provided as `filter` and be an instance of `Occi::Core::Mixin` or
        # its subclass.
        #
        # @param filter [Occi::Core::Mixin] mixin to filter by
        # @return [Occi::Core::Mixin] found mixin
        # @return [NilClass] if such mixin is not found
        def select_mixin(filter)
          mixins.detect { |m| m.depends?(filter) }
        end

        # Selects exactly one mixin or raises an error.
        # @see `select_mixin`
        def select_mixin!(filter)
          select_mixin(filter) \
            || raise(Occi::Core::Errors::InstanceLookupError, "Mixin dependent on #{filter} not found")
        end
      end
    end
  end
end

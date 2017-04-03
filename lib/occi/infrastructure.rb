# internal deps
require 'occi/core'

# Contains all OCCI-related classes and modules. This module
# does not provide any additional functionality aside from
# acting as a wrapper and a namespace-defining mechanisms.
# Please, defer to specific classes and modules within this
# namespace for details and functionality descriptions.
#
# @author Boris Parak <parak@cesnet.cz>
module Occi
  # Contains all OCCI-Infra-related classes and modules. This
  # module does not provide any additional functionality aside
  # from acting as a wrapped, a namespace-defining mechanism,
  # and versioning wrapper. Please, defer to specific classes
  # and modules within this namespace for details and
  # functionality descriptions.
  #
  # @author Boris Parak <parak@cesnet.cz>
  module Infrastructure
    autoload :Constants, 'occi/infrastructure/constants'
    autoload :Mixins, 'occi/infrastructure/mixins'
    autoload :Model, 'occi/infrastructure/model'
    autoload :Warehouse, 'occi/infrastructure/warehouse'
    autoload :InstanceBuilder, 'occi/infrastructure/instance_builder'
  end
end

# Explicitly pull in versioning information
require 'occi/infrastructure/version'

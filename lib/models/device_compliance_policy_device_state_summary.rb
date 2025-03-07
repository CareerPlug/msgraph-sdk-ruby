require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class DeviceCompliancePolicyDeviceStateSummary < MicrosoftGraph::Models::Entity
            include MicrosoftKiotaAbstractions::Parsable
            ## 
            # Number of compliant devices
            @compliant_device_count
            ## 
            # Number of devices that have compliance managed by System Center Configuration Manager
            @config_manager_count
            ## 
            # Number of conflict devices
            @conflict_device_count
            ## 
            # Number of error devices
            @error_device_count
            ## 
            # Number of devices that are in grace period
            @in_grace_period_count
            ## 
            # Number of NonCompliant devices
            @non_compliant_device_count
            ## 
            # Number of not applicable devices
            @not_applicable_device_count
            ## 
            # Number of remediated devices
            @remediated_device_count
            ## 
            # Number of unknown devices
            @unknown_device_count
            ## 
            ## Gets the compliantDeviceCount property value. Number of compliant devices
            ## @return a integer
            ## 
            def compliant_device_count
                return @compliant_device_count
            end
            ## 
            ## Sets the compliantDeviceCount property value. Number of compliant devices
            ## @param value Value to set for the compliant_device_count property.
            ## @return a void
            ## 
            def compliant_device_count=(value)
                @compliant_device_count = value
            end
            ## 
            ## Gets the configManagerCount property value. Number of devices that have compliance managed by System Center Configuration Manager
            ## @return a integer
            ## 
            def config_manager_count
                return @config_manager_count
            end
            ## 
            ## Sets the configManagerCount property value. Number of devices that have compliance managed by System Center Configuration Manager
            ## @param value Value to set for the config_manager_count property.
            ## @return a void
            ## 
            def config_manager_count=(value)
                @config_manager_count = value
            end
            ## 
            ## Gets the conflictDeviceCount property value. Number of conflict devices
            ## @return a integer
            ## 
            def conflict_device_count
                return @conflict_device_count
            end
            ## 
            ## Sets the conflictDeviceCount property value. Number of conflict devices
            ## @param value Value to set for the conflict_device_count property.
            ## @return a void
            ## 
            def conflict_device_count=(value)
                @conflict_device_count = value
            end
            ## 
            ## Instantiates a new deviceCompliancePolicyDeviceStateSummary and sets the default values.
            ## @return a void
            ## 
            def initialize()
                super
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a device_compliance_policy_device_state_summary
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return DeviceCompliancePolicyDeviceStateSummary.new
            end
            ## 
            ## Gets the errorDeviceCount property value. Number of error devices
            ## @return a integer
            ## 
            def error_device_count
                return @error_device_count
            end
            ## 
            ## Sets the errorDeviceCount property value. Number of error devices
            ## @param value Value to set for the error_device_count property.
            ## @return a void
            ## 
            def error_device_count=(value)
                @error_device_count = value
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return super.merge({
                    "compliantDeviceCount" => lambda {|n| @compliant_device_count = n.get_number_value() },
                    "configManagerCount" => lambda {|n| @config_manager_count = n.get_number_value() },
                    "conflictDeviceCount" => lambda {|n| @conflict_device_count = n.get_number_value() },
                    "errorDeviceCount" => lambda {|n| @error_device_count = n.get_number_value() },
                    "inGracePeriodCount" => lambda {|n| @in_grace_period_count = n.get_number_value() },
                    "nonCompliantDeviceCount" => lambda {|n| @non_compliant_device_count = n.get_number_value() },
                    "notApplicableDeviceCount" => lambda {|n| @not_applicable_device_count = n.get_number_value() },
                    "remediatedDeviceCount" => lambda {|n| @remediated_device_count = n.get_number_value() },
                    "unknownDeviceCount" => lambda {|n| @unknown_device_count = n.get_number_value() },
                })
            end
            ## 
            ## Gets the inGracePeriodCount property value. Number of devices that are in grace period
            ## @return a integer
            ## 
            def in_grace_period_count
                return @in_grace_period_count
            end
            ## 
            ## Sets the inGracePeriodCount property value. Number of devices that are in grace period
            ## @param value Value to set for the in_grace_period_count property.
            ## @return a void
            ## 
            def in_grace_period_count=(value)
                @in_grace_period_count = value
            end
            ## 
            ## Gets the nonCompliantDeviceCount property value. Number of NonCompliant devices
            ## @return a integer
            ## 
            def non_compliant_device_count
                return @non_compliant_device_count
            end
            ## 
            ## Sets the nonCompliantDeviceCount property value. Number of NonCompliant devices
            ## @param value Value to set for the non_compliant_device_count property.
            ## @return a void
            ## 
            def non_compliant_device_count=(value)
                @non_compliant_device_count = value
            end
            ## 
            ## Gets the notApplicableDeviceCount property value. Number of not applicable devices
            ## @return a integer
            ## 
            def not_applicable_device_count
                return @not_applicable_device_count
            end
            ## 
            ## Sets the notApplicableDeviceCount property value. Number of not applicable devices
            ## @param value Value to set for the not_applicable_device_count property.
            ## @return a void
            ## 
            def not_applicable_device_count=(value)
                @not_applicable_device_count = value
            end
            ## 
            ## Gets the remediatedDeviceCount property value. Number of remediated devices
            ## @return a integer
            ## 
            def remediated_device_count
                return @remediated_device_count
            end
            ## 
            ## Sets the remediatedDeviceCount property value. Number of remediated devices
            ## @param value Value to set for the remediated_device_count property.
            ## @return a void
            ## 
            def remediated_device_count=(value)
                @remediated_device_count = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                super
                writer.write_number_value("compliantDeviceCount", @compliant_device_count)
                writer.write_number_value("configManagerCount", @config_manager_count)
                writer.write_number_value("conflictDeviceCount", @conflict_device_count)
                writer.write_number_value("errorDeviceCount", @error_device_count)
                writer.write_number_value("inGracePeriodCount", @in_grace_period_count)
                writer.write_number_value("nonCompliantDeviceCount", @non_compliant_device_count)
                writer.write_number_value("notApplicableDeviceCount", @not_applicable_device_count)
                writer.write_number_value("remediatedDeviceCount", @remediated_device_count)
                writer.write_number_value("unknownDeviceCount", @unknown_device_count)
            end
            ## 
            ## Gets the unknownDeviceCount property value. Number of unknown devices
            ## @return a integer
            ## 
            def unknown_device_count
                return @unknown_device_count
            end
            ## 
            ## Sets the unknownDeviceCount property value. Number of unknown devices
            ## @param value Value to set for the unknown_device_count property.
            ## @return a void
            ## 
            def unknown_device_count=(value)
                @unknown_device_count = value
            end
        end
    end
end

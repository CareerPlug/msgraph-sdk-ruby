require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './xnpv'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Xnpv
                                class XnpvPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The dates property
                                    @dates
                                    ## 
                                    # The rate property
                                    @rate
                                    ## 
                                    # The values property
                                    @values
                                    ## 
                                    ## Gets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @return a i_dictionary
                                    ## 
                                    def additional_data
                                        return @additional_data
                                    end
                                    ## 
                                    ## Sets the additionalData property value. Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    ## @param value Value to set for the AdditionalData property.
                                    ## @return a void
                                    ## 
                                    def additional_data=(value)
                                        @additional_data = value
                                    end
                                    ## 
                                    ## Instantiates a new xnpvPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a xnpv_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return XnpvPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the dates property value. The dates property
                                    ## @return a json
                                    ## 
                                    def dates
                                        return @dates
                                    end
                                    ## 
                                    ## Sets the dates property value. The dates property
                                    ## @param value Value to set for the dates property.
                                    ## @return a void
                                    ## 
                                    def dates=(value)
                                        @dates = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "dates" => lambda {|n| @dates = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "rate" => lambda {|n| @rate = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "values" => lambda {|n| @values = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the rate property value. The rate property
                                    ## @return a json
                                    ## 
                                    def rate
                                        return @rate
                                    end
                                    ## 
                                    ## Sets the rate property value. The rate property
                                    ## @param value Value to set for the rate property.
                                    ## @return a void
                                    ## 
                                    def rate=(value)
                                        @rate = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("dates", @dates)
                                        writer.write_object_value("rate", @rate)
                                        writer.write_object_value("values", @values)
                                        writer.write_additional_data(@additional_data)
                                    end
                                    ## 
                                    ## Gets the values property value. The values property
                                    ## @return a json
                                    ## 
                                    def values
                                        return @values
                                    end
                                    ## 
                                    ## Sets the values property value. The values property
                                    ## @param value Value to set for the values property.
                                    ## @return a void
                                    ## 
                                    def values=(value)
                                        @values = value
                                    end
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './rank_eq'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module Rank_Eq
                                class RankEqPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The number property
                                    @number
                                    ## 
                                    # The order property
                                    @order
                                    ## 
                                    # The ref property
                                    @ref
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
                                    ## Instantiates a new RankEqPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a rank_eq_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return RankEqPostRequestBody.new
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "number" => lambda {|n| @number = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "order" => lambda {|n| @order = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "ref" => lambda {|n| @ref = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the number property value. The number property
                                    ## @return a json
                                    ## 
                                    def number
                                        return @number
                                    end
                                    ## 
                                    ## Sets the number property value. The number property
                                    ## @param value Value to set for the number property.
                                    ## @return a void
                                    ## 
                                    def number=(value)
                                        @number = value
                                    end
                                    ## 
                                    ## Gets the order property value. The order property
                                    ## @return a json
                                    ## 
                                    def order
                                        return @order
                                    end
                                    ## 
                                    ## Sets the order property value. The order property
                                    ## @param value Value to set for the order property.
                                    ## @return a void
                                    ## 
                                    def order=(value)
                                        @order = value
                                    end
                                    ## 
                                    ## Gets the ref property value. The ref property
                                    ## @return a json
                                    ## 
                                    def ref
                                        return @ref
                                    end
                                    ## 
                                    ## Sets the ref property value. The ref property
                                    ## @param value Value to set for the ref property.
                                    ## @return a void
                                    ## 
                                    def ref=(value)
                                        @ref = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("number", @number)
                                        writer.write_object_value("order", @order)
                                        writer.write_object_value("ref", @ref)
                                        writer.write_additional_data(@additional_data)
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

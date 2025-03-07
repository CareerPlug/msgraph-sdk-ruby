require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/json'
require_relative '../../../../../../drives'
require_relative '../../../../../item'
require_relative '../../../../items'
require_relative '../../../item'
require_relative '../../workbook'
require_relative '../functions'
require_relative './neg_binom_dist'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Functions
                            module NegBinom_Dist
                                class NegBinomDistPostRequestBody
                                    include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
                                    ## 
                                    # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
                                    @additional_data
                                    ## 
                                    # The cumulative property
                                    @cumulative
                                    ## 
                                    # The numberF property
                                    @number_f
                                    ## 
                                    # The numberS property
                                    @number_s
                                    ## 
                                    # The probabilityS property
                                    @probability_s
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
                                    ## Instantiates a new NegBinomDistPostRequestBody and sets the default values.
                                    ## @return a void
                                    ## 
                                    def initialize()
                                        @additional_data = Hash.new
                                    end
                                    ## 
                                    ## Creates a new instance of the appropriate class based on discriminator value
                                    ## @param parse_node The parse node to use to read the discriminator value and create the object
                                    ## @return a neg_binom_dist_post_request_body
                                    ## 
                                    def self.create_from_discriminator_value(parse_node)
                                        raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                                        return NegBinomDistPostRequestBody.new
                                    end
                                    ## 
                                    ## Gets the cumulative property value. The cumulative property
                                    ## @return a json
                                    ## 
                                    def cumulative
                                        return @cumulative
                                    end
                                    ## 
                                    ## Sets the cumulative property value. The cumulative property
                                    ## @param value Value to set for the cumulative property.
                                    ## @return a void
                                    ## 
                                    def cumulative=(value)
                                        @cumulative = value
                                    end
                                    ## 
                                    ## The deserialization information for the current model
                                    ## @return a i_dictionary
                                    ## 
                                    def get_field_deserializers()
                                        return {
                                            "cumulative" => lambda {|n| @cumulative = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "numberF" => lambda {|n| @number_f = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "numberS" => lambda {|n| @number_s = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                            "probabilityS" => lambda {|n| @probability_s = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::Json.create_from_discriminator_value(pn) }) },
                                        }
                                    end
                                    ## 
                                    ## Gets the numberF property value. The numberF property
                                    ## @return a json
                                    ## 
                                    def number_f
                                        return @number_f
                                    end
                                    ## 
                                    ## Sets the numberF property value. The numberF property
                                    ## @param value Value to set for the number_f property.
                                    ## @return a void
                                    ## 
                                    def number_f=(value)
                                        @number_f = value
                                    end
                                    ## 
                                    ## Gets the numberS property value. The numberS property
                                    ## @return a json
                                    ## 
                                    def number_s
                                        return @number_s
                                    end
                                    ## 
                                    ## Sets the numberS property value. The numberS property
                                    ## @param value Value to set for the number_s property.
                                    ## @return a void
                                    ## 
                                    def number_s=(value)
                                        @number_s = value
                                    end
                                    ## 
                                    ## Gets the probabilityS property value. The probabilityS property
                                    ## @return a json
                                    ## 
                                    def probability_s
                                        return @probability_s
                                    end
                                    ## 
                                    ## Sets the probabilityS property value. The probabilityS property
                                    ## @param value Value to set for the probability_s property.
                                    ## @return a void
                                    ## 
                                    def probability_s=(value)
                                        @probability_s = value
                                    end
                                    ## 
                                    ## Serializes information the current object
                                    ## @param writer Serialization writer to use to serialize this model
                                    ## @return a void
                                    ## 
                                    def serialize(writer)
                                        raise StandardError, 'writer cannot be null' if writer.nil?
                                        writer.write_object_value("cumulative", @cumulative)
                                        writer.write_object_value("numberF", @number_f)
                                        writer.write_object_value("numberS", @number_s)
                                        writer.write_object_value("probabilityS", @probability_s)
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

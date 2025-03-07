require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        class GeoCoordinates
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Optional. The altitude (height), in feet,  above sea level for the item. Read-only.
            @altitude
            ## 
            # Optional. The latitude, in decimal, for the item. Read-only.
            @latitude
            ## 
            # Optional. The longitude, in decimal, for the item. Read-only.
            @longitude
            ## 
            # The OdataType property
            @odata_type
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
            ## Gets the altitude property value. Optional. The altitude (height), in feet,  above sea level for the item. Read-only.
            ## @return a double
            ## 
            def altitude
                return @altitude
            end
            ## 
            ## Sets the altitude property value. Optional. The altitude (height), in feet,  above sea level for the item. Read-only.
            ## @param value Value to set for the altitude property.
            ## @return a void
            ## 
            def altitude=(value)
                @altitude = value
            end
            ## 
            ## Instantiates a new geoCoordinates and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a geo_coordinates
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return GeoCoordinates.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "altitude" => lambda {|n| @altitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "latitude" => lambda {|n| @latitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "longitude" => lambda {|n| @longitude = n.get_object_value(lambda {|pn| Double.create_from_discriminator_value(pn) }) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                }
            end
            ## 
            ## Gets the latitude property value. Optional. The latitude, in decimal, for the item. Read-only.
            ## @return a double
            ## 
            def latitude
                return @latitude
            end
            ## 
            ## Sets the latitude property value. Optional. The latitude, in decimal, for the item. Read-only.
            ## @param value Value to set for the latitude property.
            ## @return a void
            ## 
            def latitude=(value)
                @latitude = value
            end
            ## 
            ## Gets the longitude property value. Optional. The longitude, in decimal, for the item. Read-only.
            ## @return a double
            ## 
            def longitude
                return @longitude
            end
            ## 
            ## Sets the longitude property value. Optional. The longitude, in decimal, for the item. Read-only.
            ## @param value Value to set for the longitude property.
            ## @return a void
            ## 
            def longitude=(value)
                @longitude = value
            end
            ## 
            ## Gets the @odata.type property value. The OdataType property
            ## @return a string
            ## 
            def odata_type
                return @odata_type
            end
            ## 
            ## Sets the @odata.type property value. The OdataType property
            ## @param value Value to set for the odata_type property.
            ## @return a void
            ## 
            def odata_type=(value)
                @odata_type = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_object_value("altitude", @altitude)
                writer.write_object_value("latitude", @latitude)
                writer.write_object_value("longitude", @longitude)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_additional_data(@additional_data)
            end
        end
    end
end

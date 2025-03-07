require 'date'
require 'microsoft_kiota_abstractions'
require_relative '../microsoft_graph'
require_relative './models'

module MicrosoftGraph
    module Models
        ## 
        # The history for the site modifications
        class BrowserSiteHistory
            include MicrosoftKiotaAbstractions::AdditionalDataHolder, MicrosoftKiotaAbstractions::Parsable
            ## 
            # Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
            @additional_data
            ## 
            # Boolean attribute that controls the behavior of redirected sites
            @allow_redirect
            ## 
            # The content for the site
            @comment
            ## 
            # Controls what compatibility setting is used for specific sites or domains
            @compatibility_mode
            ## 
            # The user who modified the site
            @last_modified_by
            ## 
            # The merge type of the site
            @merge_type
            ## 
            # The OdataType property
            @odata_type
            ## 
            # The time the site was last published
            @published_date_time
            ## 
            # The render mode in Edge client that the site is supposed to open in
            @target_environment
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
            ## Gets the allowRedirect property value. Boolean attribute that controls the behavior of redirected sites
            ## @return a boolean
            ## 
            def allow_redirect
                return @allow_redirect
            end
            ## 
            ## Sets the allowRedirect property value. Boolean attribute that controls the behavior of redirected sites
            ## @param value Value to set for the allow_redirect property.
            ## @return a void
            ## 
            def allow_redirect=(value)
                @allow_redirect = value
            end
            ## 
            ## Gets the comment property value. The content for the site
            ## @return a string
            ## 
            def comment
                return @comment
            end
            ## 
            ## Sets the comment property value. The content for the site
            ## @param value Value to set for the comment property.
            ## @return a void
            ## 
            def comment=(value)
                @comment = value
            end
            ## 
            ## Gets the compatibilityMode property value. Controls what compatibility setting is used for specific sites or domains
            ## @return a browser_site_compatibility_mode
            ## 
            def compatibility_mode
                return @compatibility_mode
            end
            ## 
            ## Sets the compatibilityMode property value. Controls what compatibility setting is used for specific sites or domains
            ## @param value Value to set for the compatibility_mode property.
            ## @return a void
            ## 
            def compatibility_mode=(value)
                @compatibility_mode = value
            end
            ## 
            ## Instantiates a new browserSiteHistory and sets the default values.
            ## @return a void
            ## 
            def initialize()
                @additional_data = Hash.new
            end
            ## 
            ## Creates a new instance of the appropriate class based on discriminator value
            ## @param parse_node The parse node to use to read the discriminator value and create the object
            ## @return a browser_site_history
            ## 
            def self.create_from_discriminator_value(parse_node)
                raise StandardError, 'parse_node cannot be null' if parse_node.nil?
                return BrowserSiteHistory.new
            end
            ## 
            ## The deserialization information for the current model
            ## @return a i_dictionary
            ## 
            def get_field_deserializers()
                return {
                    "allowRedirect" => lambda {|n| @allow_redirect = n.get_boolean_value() },
                    "comment" => lambda {|n| @comment = n.get_string_value() },
                    "compatibilityMode" => lambda {|n| @compatibility_mode = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteCompatibilityMode) },
                    "lastModifiedBy" => lambda {|n| @last_modified_by = n.get_object_value(lambda {|pn| MicrosoftGraph::Models::IdentitySet.create_from_discriminator_value(pn) }) },
                    "mergeType" => lambda {|n| @merge_type = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteMergeType) },
                    "@odata.type" => lambda {|n| @odata_type = n.get_string_value() },
                    "publishedDateTime" => lambda {|n| @published_date_time = n.get_date_time_value() },
                    "targetEnvironment" => lambda {|n| @target_environment = n.get_enum_value(MicrosoftGraph::Models::BrowserSiteTargetEnvironment) },
                }
            end
            ## 
            ## Gets the lastModifiedBy property value. The user who modified the site
            ## @return a identity_set
            ## 
            def last_modified_by
                return @last_modified_by
            end
            ## 
            ## Sets the lastModifiedBy property value. The user who modified the site
            ## @param value Value to set for the last_modified_by property.
            ## @return a void
            ## 
            def last_modified_by=(value)
                @last_modified_by = value
            end
            ## 
            ## Gets the mergeType property value. The merge type of the site
            ## @return a browser_site_merge_type
            ## 
            def merge_type
                return @merge_type
            end
            ## 
            ## Sets the mergeType property value. The merge type of the site
            ## @param value Value to set for the merge_type property.
            ## @return a void
            ## 
            def merge_type=(value)
                @merge_type = value
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
            ## Gets the publishedDateTime property value. The time the site was last published
            ## @return a date_time
            ## 
            def published_date_time
                return @published_date_time
            end
            ## 
            ## Sets the publishedDateTime property value. The time the site was last published
            ## @param value Value to set for the published_date_time property.
            ## @return a void
            ## 
            def published_date_time=(value)
                @published_date_time = value
            end
            ## 
            ## Serializes information the current object
            ## @param writer Serialization writer to use to serialize this model
            ## @return a void
            ## 
            def serialize(writer)
                raise StandardError, 'writer cannot be null' if writer.nil?
                writer.write_boolean_value("allowRedirect", @allow_redirect)
                writer.write_string_value("comment", @comment)
                writer.write_enum_value("compatibilityMode", @compatibility_mode)
                writer.write_object_value("lastModifiedBy", @last_modified_by)
                writer.write_enum_value("mergeType", @merge_type)
                writer.write_string_value("@odata.type", @odata_type)
                writer.write_date_time_value("publishedDateTime", @published_date_time)
                writer.write_enum_value("targetEnvironment", @target_environment)
                writer.write_additional_data(@additional_data)
            end
            ## 
            ## Gets the targetEnvironment property value. The render mode in Edge client that the site is supposed to open in
            ## @return a browser_site_target_environment
            ## 
            def target_environment
                return @target_environment
            end
            ## 
            ## Sets the targetEnvironment property value. The render mode in Edge client that the site is supposed to open in
            ## @param value Value to set for the target_environment property.
            ## @return a void
            ## 
            def target_environment=(value)
                @target_environment = value
            end
        end
    end
end

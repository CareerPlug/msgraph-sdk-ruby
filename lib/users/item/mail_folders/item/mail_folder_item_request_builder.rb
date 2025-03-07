require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/mail_folder'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../users'
require_relative '../../item'
require_relative '../mail_folders'
require_relative './child_folders/child_folders_request_builder'
require_relative './child_folders/item/mail_folder_item_request_builder'
require_relative './copy/copy_request_builder'
require_relative './item'
require_relative './message_rules/item/message_rule_item_request_builder'
require_relative './message_rules/message_rules_request_builder'
require_relative './messages/item/message_item_request_builder'
require_relative './messages/messages_request_builder'
require_relative './move/move_request_builder'
require_relative './multi_value_extended_properties/item/multi_value_legacy_extended_property_item_request_builder'
require_relative './multi_value_extended_properties/multi_value_extended_properties_request_builder'
require_relative './single_value_extended_properties/item/single_value_legacy_extended_property_item_request_builder'
require_relative './single_value_extended_properties/single_value_extended_properties_request_builder'

module MicrosoftGraph
    module Users
        module Item
            module MailFolders
                module Item
                    ## 
                    # Provides operations to manage the mailFolders property of the microsoft.graph.user entity.
                    class MailFolderItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the childFolders property of the microsoft.graph.mailFolder entity.
                        def child_folders()
                            return MicrosoftGraph::Users::Item::MailFolders::Item::ChildFolders::ChildFoldersRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the copy method.
                        def copy()
                            return MicrosoftGraph::Users::Item::MailFolders::Item::Copy::CopyRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the messageRules property of the microsoft.graph.mailFolder entity.
                        def message_rules()
                            return MicrosoftGraph::Users::Item::MailFolders::Item::MessageRules::MessageRulesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the messages property of the microsoft.graph.mailFolder entity.
                        def messages()
                            return MicrosoftGraph::Users::Item::MailFolders::Item::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the move method.
                        def move()
                            return MicrosoftGraph::Users::Item::MailFolders::Item::Move::MoveRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.mailFolder entity.
                        def multi_value_extended_properties()
                            return MicrosoftGraph::Users::Item::MailFolders::Item::MultiValueExtendedProperties::MultiValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.mailFolder entity.
                        def single_value_extended_properties()
                            return MicrosoftGraph::Users::Item::MailFolders::Item::SingleValueExtendedProperties::SingleValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the childFolders property of the microsoft.graph.mailFolder entity.
                        ## @param id Unique identifier of the item
                        ## @return a mail_folder_item_request_builder
                        ## 
                        def child_folders_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["mailFolder%2Did1"] = id
                            return MicrosoftGraph::Users::Item::MailFolders::Item::ChildFolders::Item::MailFolderItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new MailFolderItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/mailFolders/{mailFolder%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property mailFolders for users
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of void
                        ## 
                        def delete(request_configuration=nil)
                            request_info = self.to_delete_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, nil, error_mapping)
                        end
                        ## 
                        ## The user's mail folders. Read-only. Nullable.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of mail_folder
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MailFolder.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the messageRules property of the microsoft.graph.mailFolder entity.
                        ## @param id Unique identifier of the item
                        ## @return a message_rule_item_request_builder
                        ## 
                        def message_rules_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["messageRule%2Did"] = id
                            return MicrosoftGraph::Users::Item::MailFolders::Item::MessageRules::Item::MessageRuleItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the messages property of the microsoft.graph.mailFolder entity.
                        ## @param id Unique identifier of the item
                        ## @return a message_item_request_builder
                        ## 
                        def messages_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["message%2Did"] = id
                            return MicrosoftGraph::Users::Item::MailFolders::Item::Messages::Item::MessageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.mailFolder entity.
                        ## @param id Unique identifier of the item
                        ## @return a multi_value_legacy_extended_property_item_request_builder
                        ## 
                        def multi_value_extended_properties_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["multiValueLegacyExtendedProperty%2Did"] = id
                            return MicrosoftGraph::Users::Item::MailFolders::Item::MultiValueExtendedProperties::Item::MultiValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Update the navigation property mailFolders in users
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of mail_folder
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MailFolder.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.mailFolder entity.
                        ## @param id Unique identifier of the item
                        ## @return a single_value_legacy_extended_property_item_request_builder
                        ## 
                        def single_value_extended_properties_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["singleValueLegacyExtendedProperty%2Did"] = id
                            return MicrosoftGraph::Users::Item::MailFolders::Item::SingleValueExtendedProperties::Item::SingleValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Delete navigation property mailFolders for users
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_delete_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :DELETE
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            return request_info
                        end
                        ## 
                        ## The user's mail folders. Read-only. Nullable.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_get_request_information(request_configuration=nil)
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :GET
                            request_info.headers.add('Accept', 'application/json')
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.set_query_string_parameters_from_raw_object(request_configuration.query_parameters)
                                request_info.add_request_options(request_configuration.options)
                            end
                            return request_info
                        end
                        ## 
                        ## Update the navigation property mailFolders in users
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a request_information
                        ## 
                        def to_patch_request_information(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                            request_info.url_template = @url_template
                            request_info.path_parameters = @path_parameters
                            request_info.http_method = :PATCH
                            request_info.headers.add('Accept', 'application/json')
                            unless request_configuration.nil?
                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                request_info.add_request_options(request_configuration.options)
                            end
                            request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                            return request_info
                        end

                        ## 
                        # The user's mail folders. Read-only. Nullable.
                        class MailFolderItemRequestBuilderGetQueryParameters
                            
                            ## 
                            # Expand related entities
                            attr_accessor :expand
                            ## 
                            # Select properties to be returned
                            attr_accessor :select
                            ## 
                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                            ## @param original_name The original query parameter name in the class.
                            ## @return a string
                            ## 
                            def get_query_parameter(original_name)
                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                case original_name
                                    when "expand"
                                        return "%24expand"
                                    when "select"
                                        return "%24select"
                                    else
                                        return original_name
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

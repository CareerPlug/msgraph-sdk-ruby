require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/list'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../drives'
require_relative '../item'
require_relative './columns/columns_request_builder'
require_relative './columns/item/column_definition_item_request_builder'
require_relative './content_types/content_types_request_builder'
require_relative './content_types/item/content_type_item_request_builder'
require_relative './drive/drive_request_builder'
require_relative './items/item/list_item_item_request_builder'
require_relative './items/items_request_builder'
require_relative './list'
require_relative './operations/item/rich_long_running_operation_item_request_builder'
require_relative './operations/operations_request_builder'
require_relative './subscriptions/item/subscription_item_request_builder'
require_relative './subscriptions/subscriptions_request_builder'

module MicrosoftGraph
    module Drives
        module Item
            module List
                ## 
                # Provides operations to manage the list property of the microsoft.graph.drive entity.
                class ListRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the columns property of the microsoft.graph.list entity.
                    def columns()
                        return MicrosoftGraph::Drives::Item::List::Columns::ColumnsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the contentTypes property of the microsoft.graph.list entity.
                    def content_types()
                        return MicrosoftGraph::Drives::Item::List::ContentTypes::ContentTypesRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the drive property of the microsoft.graph.list entity.
                    def drive()
                        return MicrosoftGraph::Drives::Item::List::Drive::DriveRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the items property of the microsoft.graph.list entity.
                    def items()
                        return MicrosoftGraph::Drives::Item::List::Items::ItemsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the operations property of the microsoft.graph.list entity.
                    def operations()
                        return MicrosoftGraph::Drives::Item::List::Operations::OperationsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the subscriptions property of the microsoft.graph.list entity.
                    def subscriptions()
                        return MicrosoftGraph::Drives::Item::List::Subscriptions::SubscriptionsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the columns property of the microsoft.graph.list entity.
                    ## @param id Unique identifier of the item
                    ## @return a column_definition_item_request_builder
                    ## 
                    def columns_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["columnDefinition%2Did"] = id
                        return MicrosoftGraph::Drives::Item::List::Columns::Item::ColumnDefinitionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new ListRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/list{?%24select,%24expand}")
                    end
                    ## 
                    ## Provides operations to manage the contentTypes property of the microsoft.graph.list entity.
                    ## @param id Unique identifier of the item
                    ## @return a content_type_item_request_builder
                    ## 
                    def content_types_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["contentType%2Did"] = id
                        return MicrosoftGraph::Drives::Item::List::ContentTypes::Item::ContentTypeItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property list for drives
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
                    ## For drives in SharePoint, the underlying document library list. Read-only. Nullable.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of list
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::List.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the items property of the microsoft.graph.list entity.
                    ## @param id Unique identifier of the item
                    ## @return a list_item_item_request_builder
                    ## 
                    def items_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["listItem%2Did"] = id
                        return MicrosoftGraph::Drives::Item::List::Items::Item::ListItemItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the operations property of the microsoft.graph.list entity.
                    ## @param id Unique identifier of the item
                    ## @return a rich_long_running_operation_item_request_builder
                    ## 
                    def operations_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["richLongRunningOperation%2Did"] = id
                        return MicrosoftGraph::Drives::Item::List::Operations::Item::RichLongRunningOperationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Update the navigation property list in drives
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of list
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::List.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the subscriptions property of the microsoft.graph.list entity.
                    ## @param id Unique identifier of the item
                    ## @return a subscription_item_request_builder
                    ## 
                    def subscriptions_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["subscription%2Did"] = id
                        return MicrosoftGraph::Drives::Item::List::Subscriptions::Item::SubscriptionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Delete navigation property list for drives
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
                    ## For drives in SharePoint, the underlying document library list. Read-only. Nullable.
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
                    ## Update the navigation property list in drives
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
                    # For drives in SharePoint, the underlying document library list. Read-only. Nullable.
                    class ListRequestBuilderGetQueryParameters
                        
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

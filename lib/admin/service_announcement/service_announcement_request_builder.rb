require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../../models/service_announcement'
require_relative '../admin'
require_relative './health_overviews/health_overviews_request_builder'
require_relative './health_overviews/item/service_health_item_request_builder'
require_relative './issues/issues_request_builder'
require_relative './issues/item/service_health_issue_item_request_builder'
require_relative './messages/item/service_update_message_item_request_builder'
require_relative './messages/messages_request_builder'
require_relative './service_announcement'

module MicrosoftGraph
    module Admin
        module ServiceAnnouncement
            ## 
            # Provides operations to manage the serviceAnnouncement property of the microsoft.graph.admin entity.
            class ServiceAnnouncementRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the healthOverviews property of the microsoft.graph.serviceAnnouncement entity.
                def health_overviews()
                    return MicrosoftGraph::Admin::ServiceAnnouncement::HealthOverviews::HealthOverviewsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the issues property of the microsoft.graph.serviceAnnouncement entity.
                def issues()
                    return MicrosoftGraph::Admin::ServiceAnnouncement::Issues::IssuesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the messages property of the microsoft.graph.serviceAnnouncement entity.
                def messages()
                    return MicrosoftGraph::Admin::ServiceAnnouncement::Messages::MessagesRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new ServiceAnnouncementRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/admin/serviceAnnouncement{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property serviceAnnouncement for admin
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
                ## A container for service communications resources. Read-only.
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_announcement
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ServiceAnnouncement.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the healthOverviews property of the microsoft.graph.serviceAnnouncement entity.
                ## @param id Unique identifier of the item
                ## @return a service_health_item_request_builder
                ## 
                def health_overviews_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["serviceHealth%2Did"] = id
                    return MicrosoftGraph::Admin::ServiceAnnouncement::HealthOverviews::Item::ServiceHealthItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the issues property of the microsoft.graph.serviceAnnouncement entity.
                ## @param id Unique identifier of the item
                ## @return a service_health_issue_item_request_builder
                ## 
                def issues_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["serviceHealthIssue%2Did"] = id
                    return MicrosoftGraph::Admin::ServiceAnnouncement::Issues::Item::ServiceHealthIssueItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the messages property of the microsoft.graph.serviceAnnouncement entity.
                ## @param id Unique identifier of the item
                ## @return a service_update_message_item_request_builder
                ## 
                def messages_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["serviceUpdateMessage%2Did"] = id
                    return MicrosoftGraph::Admin::ServiceAnnouncement::Messages::Item::ServiceUpdateMessageItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Update the navigation property serviceAnnouncement in admin
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of service_announcement
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ServiceAnnouncement.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Delete navigation property serviceAnnouncement for admin
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
                ## A container for service communications resources. Read-only.
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
                ## Update the navigation property serviceAnnouncement in admin
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
                # A container for service communications resources. Read-only.
                class ServiceAnnouncementRequestBuilderGetQueryParameters
                    
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

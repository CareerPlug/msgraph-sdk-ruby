require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/connected_organization'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../identity_governance'
require_relative '../../entitlement_management'
require_relative '../connected_organizations'
require_relative './external_sponsors/external_sponsors_request_builder'
require_relative './external_sponsors/item/directory_object_item_request_builder'
require_relative './internal_sponsors/internal_sponsors_request_builder'
require_relative './internal_sponsors/item/directory_object_item_request_builder'
require_relative './item'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module ConnectedOrganizations
                module Item
                    ## 
                    # Provides operations to manage the connectedOrganizations property of the microsoft.graph.entitlementManagement entity.
                    class ConnectedOrganizationItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to manage the externalSponsors property of the microsoft.graph.connectedOrganization entity.
                        def external_sponsors()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::ExternalSponsors::ExternalSponsorsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the internalSponsors property of the microsoft.graph.connectedOrganization entity.
                        def internal_sponsors()
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::InternalSponsors::InternalSponsorsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new ConnectedOrganizationItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/connectedOrganizations/{connectedOrganization%2Did}{?%24select,%24expand}")
                        end
                        ## 
                        ## Delete navigation property connectedOrganizations for identityGovernance
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
                        ## Gets an item from the MicrosoftGraph.identityGovernance.entitlementManagement.connectedOrganizations.item.externalSponsors.item collection
                        ## @param id Unique identifier of the item
                        ## @return a directory_object_item_request_builder
                        ## 
                        def external_sponsors_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["directoryObject%2Did"] = id
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::ExternalSponsors::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## References to a directory or domain of another organization whose users can request access.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of connected_organization
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ConnectedOrganization.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Gets an item from the MicrosoftGraph.identityGovernance.entitlementManagement.connectedOrganizations.item.internalSponsors.item collection
                        ## @param id Unique identifier of the item
                        ## @return a directory_object_item_request_builder
                        ## 
                        def internal_sponsors_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["directoryObject%2Did"] = id
                            return MicrosoftGraph::IdentityGovernance::EntitlementManagement::ConnectedOrganizations::Item::InternalSponsors::Item::DirectoryObjectItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Update the navigation property connectedOrganizations in identityGovernance
                        ## @param body The request body
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of connected_organization
                        ## 
                        def patch(body, request_configuration=nil)
                            raise StandardError, 'body cannot be null' if body.nil?
                            request_info = self.to_patch_request_information(
                                body, request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::ConnectedOrganization.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Delete navigation property connectedOrganizations for identityGovernance
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
                        ## References to a directory or domain of another organization whose users can request access.
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
                        ## Update the navigation property connectedOrganizations in identityGovernance
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
                        # References to a directory or domain of another organization whose users can request access.
                        class ConnectedOrganizationItemRequestBuilderGetQueryParameters
                            
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

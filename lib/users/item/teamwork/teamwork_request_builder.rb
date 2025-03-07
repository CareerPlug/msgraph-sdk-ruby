require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../../models/user_teamwork'
require_relative '../../users'
require_relative '../item'
require_relative './associated_teams/associated_teams_request_builder'
require_relative './associated_teams/item/associated_team_info_item_request_builder'
require_relative './installed_apps/installed_apps_request_builder'
require_relative './installed_apps/item/user_scope_teams_app_installation_item_request_builder'
require_relative './send_activity_notification/send_activity_notification_request_builder'
require_relative './teamwork'

module MicrosoftGraph
    module Users
        module Item
            module Teamwork
                ## 
                # Provides operations to manage the teamwork property of the microsoft.graph.user entity.
                class TeamworkRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to manage the associatedTeams property of the microsoft.graph.userTeamwork entity.
                    def associated_teams()
                        return MicrosoftGraph::Users::Item::Teamwork::AssociatedTeams::AssociatedTeamsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to manage the installedApps property of the microsoft.graph.userTeamwork entity.
                    def installed_apps()
                        return MicrosoftGraph::Users::Item::Teamwork::InstalledApps::InstalledAppsRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the sendActivityNotification method.
                    def send_activity_notification()
                        return MicrosoftGraph::Users::Item::Teamwork::SendActivityNotification::SendActivityNotificationRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Provides operations to manage the associatedTeams property of the microsoft.graph.userTeamwork entity.
                    ## @param id Unique identifier of the item
                    ## @return a associated_team_info_item_request_builder
                    ## 
                    def associated_teams_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["associatedTeamInfo%2Did"] = id
                        return MicrosoftGraph::Users::Item::Teamwork::AssociatedTeams::Item::AssociatedTeamInfoItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new TeamworkRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/teamwork{?%24select,%24expand}")
                    end
                    ## 
                    ## Delete navigation property teamwork for users
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
                    ## Get teamwork from users
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of user_teamwork
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::UserTeamwork.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Provides operations to manage the installedApps property of the microsoft.graph.userTeamwork entity.
                    ## @param id Unique identifier of the item
                    ## @return a user_scope_teams_app_installation_item_request_builder
                    ## 
                    def installed_apps_by_id(id)
                        raise StandardError, 'id cannot be null' if id.nil?
                        url_tpl_params = @path_parameters.clone
                        url_tpl_params["userScopeTeamsAppInstallation%2Did"] = id
                        return MicrosoftGraph::Users::Item::Teamwork::InstalledApps::Item::UserScopeTeamsAppInstallationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                    end
                    ## 
                    ## Update the navigation property teamwork in users
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of user_teamwork
                    ## 
                    def patch(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_patch_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::UserTeamwork.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Delete navigation property teamwork for users
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
                    ## Get teamwork from users
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
                    ## Update the navigation property teamwork in users
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
                    # Get teamwork from users
                    class TeamworkRequestBuilderGetQueryParameters
                        
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

require 'microsoft_kiota_abstractions'
require_relative '../../../../../microsoft_graph'
require_relative '../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../models/planner_plan'
require_relative '../../../../groups'
require_relative '../../../item'
require_relative '../../planner'
require_relative '../plans'
require_relative './buckets/buckets_request_builder'
require_relative './buckets/item/planner_bucket_item_request_builder'
require_relative './details/details_request_builder'
require_relative './item'
require_relative './tasks/item/planner_task_item_request_builder'
require_relative './tasks/tasks_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module Planner
                module Plans
                    module Item
                        ## 
                        # Provides operations to manage the plans property of the microsoft.graph.plannerGroup entity.
                        class PlannerPlanItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                            
                            ## 
                            # Provides operations to manage the buckets property of the microsoft.graph.plannerPlan entity.
                            def buckets()
                                return MicrosoftGraph::Groups::Item::Planner::Plans::Item::Buckets::BucketsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the details property of the microsoft.graph.plannerPlan entity.
                            def details()
                                return MicrosoftGraph::Groups::Item::Planner::Plans::Item::Details::DetailsRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            # Provides operations to manage the tasks property of the microsoft.graph.plannerPlan entity.
                            def tasks()
                                return MicrosoftGraph::Groups::Item::Planner::Plans::Item::Tasks::TasksRequestBuilder.new(@path_parameters, @request_adapter)
                            end
                            ## 
                            ## Provides operations to manage the buckets property of the microsoft.graph.plannerPlan entity.
                            ## @param id Unique identifier of the item
                            ## @return a planner_bucket_item_request_builder
                            ## 
                            def buckets_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["plannerBucket%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Planner::Plans::Item::Buckets::Item::PlannerBucketItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Instantiates a new PlannerPlanItemRequestBuilder and sets the default values.
                            ## @param path_parameters Path parameters for the request
                            ## @param request_adapter The request adapter to use to execute the requests.
                            ## @return a void
                            ## 
                            def initialize(path_parameters, request_adapter)
                                super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/planner/plans/{plannerPlan%2Did}{?%24select,%24expand}")
                            end
                            ## 
                            ## Delete navigation property plans for groups
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
                            ## Read-only. Nullable. Returns the plannerPlans owned by the group.
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of planner_plan
                            ## 
                            def get(request_configuration=nil)
                                request_info = self.to_get_request_information(
                                    request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::PlannerPlan.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Update the navigation property plans in groups
                            ## @param body The request body
                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                            ## @return a Fiber of planner_plan
                            ## 
                            def patch(body, request_configuration=nil)
                                raise StandardError, 'body cannot be null' if body.nil?
                                request_info = self.to_patch_request_information(
                                    body, request_configuration
                                )
                                error_mapping = Hash.new
                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::PlannerPlan.create_from_discriminator_value(pn) }, error_mapping)
                            end
                            ## 
                            ## Provides operations to manage the tasks property of the microsoft.graph.plannerPlan entity.
                            ## @param id Unique identifier of the item
                            ## @return a planner_task_item_request_builder
                            ## 
                            def tasks_by_id(id)
                                raise StandardError, 'id cannot be null' if id.nil?
                                url_tpl_params = @path_parameters.clone
                                url_tpl_params["plannerTask%2Did"] = id
                                return MicrosoftGraph::Groups::Item::Planner::Plans::Item::Tasks::Item::PlannerTaskItemRequestBuilder.new(url_tpl_params, @request_adapter)
                            end
                            ## 
                            ## Delete navigation property plans for groups
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
                            ## Read-only. Nullable. Returns the plannerPlans owned by the group.
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
                            ## Update the navigation property plans in groups
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
                            # Read-only. Nullable. Returns the plannerPlans owned by the group.
                            class PlannerPlanItemRequestBuilderGetQueryParameters
                                
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
end

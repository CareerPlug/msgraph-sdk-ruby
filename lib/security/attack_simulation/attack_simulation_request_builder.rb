require 'microsoft_kiota_abstractions'
require_relative '../../microsoft_graph'
require_relative '../../models/attack_simulation_root'
require_relative '../../models/o_data_errors/o_data_error'
require_relative '../security'
require_relative './attack_simulation'
require_relative './simulation_automations/item/simulation_automation_item_request_builder'
require_relative './simulation_automations/simulation_automations_request_builder'
require_relative './simulations/item/simulation_item_request_builder'
require_relative './simulations/simulations_request_builder'

module MicrosoftGraph
    module Security
        module AttackSimulation
            ## 
            # Provides operations to manage the attackSimulation property of the microsoft.graph.security entity.
            class AttackSimulationRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                
                ## 
                # Provides operations to manage the simulationAutomations property of the microsoft.graph.attackSimulationRoot entity.
                def simulation_automations()
                    return MicrosoftGraph::Security::AttackSimulation::SimulationAutomations::SimulationAutomationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                # Provides operations to manage the simulations property of the microsoft.graph.attackSimulationRoot entity.
                def simulations()
                    return MicrosoftGraph::Security::AttackSimulation::Simulations::SimulationsRequestBuilder.new(@path_parameters, @request_adapter)
                end
                ## 
                ## Instantiates a new AttackSimulationRequestBuilder and sets the default values.
                ## @param path_parameters Path parameters for the request
                ## @param request_adapter The request adapter to use to execute the requests.
                ## @return a void
                ## 
                def initialize(path_parameters, request_adapter)
                    super(path_parameters, request_adapter, "{+baseurl}/security/attackSimulation{?%24select,%24expand}")
                end
                ## 
                ## Delete navigation property attackSimulation for security
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
                ## Get attackSimulation from security
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of attack_simulation_root
                ## 
                def get(request_configuration=nil)
                    request_info = self.to_get_request_information(
                        request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AttackSimulationRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Update the navigation property attackSimulation in security
                ## @param body The request body
                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                ## @return a Fiber of attack_simulation_root
                ## 
                def patch(body, request_configuration=nil)
                    raise StandardError, 'body cannot be null' if body.nil?
                    request_info = self.to_patch_request_information(
                        body, request_configuration
                    )
                    error_mapping = Hash.new
                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::AttackSimulationRoot.create_from_discriminator_value(pn) }, error_mapping)
                end
                ## 
                ## Provides operations to manage the simulationAutomations property of the microsoft.graph.attackSimulationRoot entity.
                ## @param id Unique identifier of the item
                ## @return a simulation_automation_item_request_builder
                ## 
                def simulation_automations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["simulationAutomation%2Did"] = id
                    return MicrosoftGraph::Security::AttackSimulation::SimulationAutomations::Item::SimulationAutomationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Provides operations to manage the simulations property of the microsoft.graph.attackSimulationRoot entity.
                ## @param id Unique identifier of the item
                ## @return a simulation_item_request_builder
                ## 
                def simulations_by_id(id)
                    raise StandardError, 'id cannot be null' if id.nil?
                    url_tpl_params = @path_parameters.clone
                    url_tpl_params["simulation%2Did"] = id
                    return MicrosoftGraph::Security::AttackSimulation::Simulations::Item::SimulationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                end
                ## 
                ## Delete navigation property attackSimulation for security
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
                ## Get attackSimulation from security
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
                ## Update the navigation property attackSimulation in security
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
                # Get attackSimulation from security
                class AttackSimulationRequestBuilderGetQueryParameters
                    
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

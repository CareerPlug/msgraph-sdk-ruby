require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/directory_object'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../me'
require_relative '../member_of'
require_relative './graph_administrative_unit/graph_administrative_unit_request_builder'
require_relative './graph_group/graph_group_request_builder'
require_relative './item'

module MicrosoftGraph
    module Me
        module MemberOf
            module Item
                ## 
                # Provides operations to manage the memberOf property of the microsoft.graph.user entity.
                class DirectoryObjectItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Casts the previous resource to administrativeUnit.
                    def graph_administrative_unit()
                        return MicrosoftGraph::Me::MemberOf::Item::GraphAdministrativeUnit::GraphAdministrativeUnitRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Casts the previous resource to group.
                    def graph_group()
                        return MicrosoftGraph::Me::MemberOf::Item::GraphGroup::GraphGroupRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new DirectoryObjectItemRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/me/memberOf/{directoryObject%2Did}{?%24select,%24expand}")
                    end
                    ## 
                    ## The groups and directory roles that the user is a member of. Read-only. Nullable. Supports $expand.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of directory_object
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::DirectoryObject.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## The groups and directory roles that the user is a member of. Read-only. Nullable. Supports $expand.
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
                    # The groups and directory roles that the user is a member of. Read-only. Nullable. Supports $expand.
                    class DirectoryObjectItemRequestBuilderGetQueryParameters
                        
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

require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../models/workbook_table_sort'
require_relative '../../../../../../../drives'
require_relative '../../../../../../item'
require_relative '../../../../../items'
require_relative '../../../../item'
require_relative '../../../workbook'
require_relative '../../tables'
require_relative '../item'
require_relative './apply/apply_request_builder'
require_relative './clear/clear_request_builder'
require_relative './reapply/reapply_request_builder'
require_relative './sort'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module Tables
                            module Item
                                module Sort
                                    ## 
                                    # Provides operations to manage the sort property of the microsoft.graph.workbookTable entity.
                                    class SortRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        # Provides operations to call the apply method.
                                        def apply()
                                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Sort::Apply::ApplyRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the clear method.
                                        def clear()
                                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Sort::Clear::ClearRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        # Provides operations to call the reapply method.
                                        def reapply()
                                            return MicrosoftGraph::Drives::Item::Items::Item::Workbook::Tables::Item::Sort::Reapply::ReapplyRequestBuilder.new(@path_parameters, @request_adapter)
                                        end
                                        ## 
                                        ## Instantiates a new SortRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/tables/{workbookTable%2Did}/sort{?%24select,%24expand}")
                                        end
                                        ## 
                                        ## Delete navigation property sort for drives
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
                                        ## Retrieve the properties and relationships of tablesort object.
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of workbook_table_sort
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookTableSort.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Update the navigation property sort in drives
                                        ## @param body The request body
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of workbook_table_sort
                                        ## 
                                        def patch(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_patch_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookTableSort.create_from_discriminator_value(pn) }, error_mapping)
                                        end
                                        ## 
                                        ## Delete navigation property sort for drives
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
                                        ## Retrieve the properties and relationships of tablesort object.
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
                                        ## Update the navigation property sort in drives
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
                                        # Retrieve the properties and relationships of tablesort object.
                                        class SortRequestBuilderGetQueryParameters
                                            
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
        end
    end
end

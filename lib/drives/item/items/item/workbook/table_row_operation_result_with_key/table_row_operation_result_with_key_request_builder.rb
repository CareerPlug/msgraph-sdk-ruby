require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../models/workbook_table_row'
require_relative '../../../../../drives'
require_relative '../../../../item'
require_relative '../../../items'
require_relative '../../item'
require_relative '../workbook'
require_relative './table_row_operation_result_with_key'

module MicrosoftGraph
    module Drives
        module Item
            module Items
                module Item
                    module Workbook
                        module TableRowOperationResultWithKey
                            ## 
                            # Provides operations to call the tableRowOperationResult method.
                            class TableRowOperationResultWithKeyRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new TableRowOperationResultWithKeyRequestBuilder and sets the default values.
                                ## @param key Usage: key='{key}'
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter, key=nil)
                                    super(path_parameters, request_adapter, "{+baseurl}/drives/{drive%2Did}/items/{driveItem%2Did}/workbook/tableRowOperationResult(key='{key}')")
                                end
                                ## 
                                ## Invoke function tableRowOperationResult
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of workbook_table_row
                                ## 
                                def get(request_configuration=nil)
                                    request_info = self.to_get_request_information(
                                        request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::WorkbookTableRow.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Invoke function tableRowOperationResult
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
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    return request_info
                                end
                            end
                        end
                    end
                end
            end
        end
    end
end

require 'microsoft_kiota_abstractions'
require_relative '../../../../../../microsoft_graph'
require_relative '../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../me'
require_relative '../../../../calendar_groups'
require_relative '../../../item'
require_relative '../../calendars'
require_relative '../item'
require_relative './get_schedule'

module MicrosoftGraph
    module Me
        module CalendarGroups
            module Item
                module Calendars
                    module Item
                        module GetSchedule
                            ## 
                            # Provides operations to call the getSchedule method.
                            class GetScheduleRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                
                                ## 
                                ## Instantiates a new GetScheduleRequestBuilder and sets the default values.
                                ## @param path_parameters Path parameters for the request
                                ## @param request_adapter The request adapter to use to execute the requests.
                                ## @return a void
                                ## 
                                def initialize(path_parameters, request_adapter)
                                    super(path_parameters, request_adapter, "{+baseurl}/me/calendarGroups/{calendarGroup%2Did}/calendars/{calendar%2Did}/getSchedule")
                                end
                                ## 
                                ## Get the free/busy availability information for a collection of users, distributions lists, or resources (rooms or equipment) for a specified time period.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a Fiber of get_schedule_response
                                ## 
                                def post(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = self.to_post_request_information(
                                        body, request_configuration
                                    )
                                    error_mapping = Hash.new
                                    error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                    return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Me::CalendarGroups::Item::Calendars::Item::GetSchedule::GetScheduleResponse.create_from_discriminator_value(pn) }, error_mapping)
                                end
                                ## 
                                ## Get the free/busy availability information for a collection of users, distributions lists, or resources (rooms or equipment) for a specified time period.
                                ## @param body The request body
                                ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                ## @return a request_information
                                ## 
                                def to_post_request_information(body, request_configuration=nil)
                                    raise StandardError, 'body cannot be null' if body.nil?
                                    request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                    request_info.url_template = @url_template
                                    request_info.path_parameters = @path_parameters
                                    request_info.http_method = :POST
                                    request_info.headers.add('Accept', 'application/json')
                                    unless request_configuration.nil?
                                        request_info.add_headers_from_raw_object(request_configuration.headers)
                                        request_info.add_request_options(request_configuration.options)
                                    end
                                    request_info.set_content_from_parsable(self.request_adapter, "application/json", body)
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

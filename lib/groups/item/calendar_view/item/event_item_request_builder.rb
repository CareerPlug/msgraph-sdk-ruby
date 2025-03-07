require 'microsoft_kiota_abstractions'
require_relative '../../../../microsoft_graph'
require_relative '../../../../models/event'
require_relative '../../../../models/o_data_errors/o_data_error'
require_relative '../../../groups'
require_relative '../../item'
require_relative '../calendar_view'
require_relative './accept/accept_request_builder'
require_relative './attachments/attachments_request_builder'
require_relative './attachments/item/attachment_item_request_builder'
require_relative './calendar/calendar_request_builder'
require_relative './cancel/cancel_request_builder'
require_relative './decline/decline_request_builder'
require_relative './dismiss_reminder/dismiss_reminder_request_builder'
require_relative './extensions/extensions_request_builder'
require_relative './extensions/item/extension_item_request_builder'
require_relative './forward/forward_request_builder'
require_relative './instances/instances_request_builder'
require_relative './instances/item/event_item_request_builder'
require_relative './item'
require_relative './multi_value_extended_properties/item/multi_value_legacy_extended_property_item_request_builder'
require_relative './multi_value_extended_properties/multi_value_extended_properties_request_builder'
require_relative './single_value_extended_properties/item/single_value_legacy_extended_property_item_request_builder'
require_relative './single_value_extended_properties/single_value_extended_properties_request_builder'
require_relative './snooze_reminder/snooze_reminder_request_builder'
require_relative './tentatively_accept/tentatively_accept_request_builder'

module MicrosoftGraph
    module Groups
        module Item
            module CalendarView
                module Item
                    ## 
                    # Provides operations to manage the calendarView property of the microsoft.graph.group entity.
                    class EventItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                        
                        ## 
                        # Provides operations to call the accept method.
                        def accept()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Accept::AcceptRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the attachments property of the microsoft.graph.event entity.
                        def attachments()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Attachments::AttachmentsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the calendar property of the microsoft.graph.event entity.
                        def calendar()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Calendar::CalendarRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the cancel method.
                        def cancel()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Cancel::CancelRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the decline method.
                        def decline()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Decline::DeclineRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the dismissReminder method.
                        def dismiss_reminder()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::DismissReminder::DismissReminderRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the extensions property of the microsoft.graph.event entity.
                        def extensions()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Extensions::ExtensionsRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the forward method.
                        def forward()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Forward::ForwardRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the instances property of the microsoft.graph.event entity.
                        def instances()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Instances::InstancesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.event entity.
                        def multi_value_extended_properties()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::MultiValueExtendedProperties::MultiValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.event entity.
                        def single_value_extended_properties()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::SingleValueExtendedProperties::SingleValueExtendedPropertiesRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the snoozeReminder method.
                        def snooze_reminder()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::SnoozeReminder::SnoozeReminderRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        # Provides operations to call the tentativelyAccept method.
                        def tentatively_accept()
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::TentativelyAccept::TentativelyAcceptRequestBuilder.new(@path_parameters, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the attachments property of the microsoft.graph.event entity.
                        ## @param id Unique identifier of the item
                        ## @return a attachment_item_request_builder
                        ## 
                        def attachments_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["attachment%2Did"] = id
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Attachments::Item::AttachmentItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Instantiates a new EventItemRequestBuilder and sets the default values.
                        ## @param path_parameters Path parameters for the request
                        ## @param request_adapter The request adapter to use to execute the requests.
                        ## @return a void
                        ## 
                        def initialize(path_parameters, request_adapter)
                            super(path_parameters, request_adapter, "{+baseurl}/groups/{group%2Did}/calendarView/{event%2Did}{?startDateTime*,endDateTime*,%24select}")
                        end
                        ## 
                        ## Provides operations to manage the extensions property of the microsoft.graph.event entity.
                        ## @param id Unique identifier of the item
                        ## @return a extension_item_request_builder
                        ## 
                        def extensions_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["extension%2Did"] = id
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Extensions::Item::ExtensionItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## The calendar view for the calendar. Read-only.
                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                        ## @return a Fiber of event
                        ## 
                        def get(request_configuration=nil)
                            request_info = self.to_get_request_information(
                                request_configuration
                            )
                            error_mapping = Hash.new
                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                            return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::Event.create_from_discriminator_value(pn) }, error_mapping)
                        end
                        ## 
                        ## Provides operations to manage the instances property of the microsoft.graph.event entity.
                        ## @param id Unique identifier of the item
                        ## @return a event_item_request_builder
                        ## 
                        def instances_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["event%2Did1"] = id
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::Instances::Item::EventItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the multiValueExtendedProperties property of the microsoft.graph.event entity.
                        ## @param id Unique identifier of the item
                        ## @return a multi_value_legacy_extended_property_item_request_builder
                        ## 
                        def multi_value_extended_properties_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["multiValueLegacyExtendedProperty%2Did"] = id
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::MultiValueExtendedProperties::Item::MultiValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## Provides operations to manage the singleValueExtendedProperties property of the microsoft.graph.event entity.
                        ## @param id Unique identifier of the item
                        ## @return a single_value_legacy_extended_property_item_request_builder
                        ## 
                        def single_value_extended_properties_by_id(id)
                            raise StandardError, 'id cannot be null' if id.nil?
                            url_tpl_params = @path_parameters.clone
                            url_tpl_params["singleValueLegacyExtendedProperty%2Did"] = id
                            return MicrosoftGraph::Groups::Item::CalendarView::Item::SingleValueExtendedProperties::Item::SingleValueLegacyExtendedPropertyItemRequestBuilder.new(url_tpl_params, @request_adapter)
                        end
                        ## 
                        ## The calendar view for the calendar. Read-only.
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
                        # The calendar view for the calendar. Read-only.
                        class EventItemRequestBuilderGetQueryParameters
                            
                            ## 
                            # The end date and time of the time range, represented in ISO 8601 format. For example, 2019-11-08T20:00:00-08:00
                            attr_accessor :end_date_time
                            ## 
                            # Select properties to be returned
                            attr_accessor :select
                            ## 
                            # The start date and time of the time range, represented in ISO 8601 format. For example, 2019-11-08T19:00:00-08:00
                            attr_accessor :start_date_time
                            ## 
                            ## Maps the query parameters names to their encoded names for the URI template parsing.
                            ## @param original_name The original query parameter name in the class.
                            ## @return a string
                            ## 
                            def get_query_parameter(original_name)
                                raise StandardError, 'original_name cannot be null' if original_name.nil?
                                case original_name
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

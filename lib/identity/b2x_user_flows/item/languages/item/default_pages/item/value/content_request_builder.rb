require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../identity'
require_relative '../../../../../../b2x_user_flows'
require_relative '../../../../../item'
require_relative '../../../../languages'
require_relative '../../../item'
require_relative '../../default_pages'
require_relative '../item'
require_relative './value'

module MicrosoftGraph
    module Identity
        module B2xUserFlows
            module Item
                module Languages
                    module Item
                        module DefaultPages
                            module Item
                                module Value
                                    ## 
                                    # Provides operations to manage the media for the identityContainer entity.
                                    class ContentRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                        
                                        ## 
                                        ## Instantiates a new ContentRequestBuilder and sets the default values.
                                        ## @param path_parameters Path parameters for the request
                                        ## @param request_adapter The request adapter to use to execute the requests.
                                        ## @return a void
                                        ## 
                                        def initialize(path_parameters, request_adapter)
                                            super(path_parameters, request_adapter, "{+baseurl}/identity/b2xUserFlows/{b2xIdentityUserFlow%2Did}/languages/{userFlowLanguageConfiguration%2Did}/defaultPages/{userFlowLanguagePage%2Did}/$value")
                                        end
                                        ## 
                                        ## Get media content for the navigation property defaultPages from identity
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of binary
                                        ## 
                                        def get(request_configuration=nil)
                                            request_info = self.to_get_request_information(
                                                request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, Binary, error_mapping)
                                        end
                                        ## 
                                        ## Update media content for the navigation property defaultPages in identity
                                        ## @param body Binary request body
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a Fiber of binary
                                        ## 
                                        def put(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = self.to_put_request_information(
                                                body, request_configuration
                                            )
                                            error_mapping = Hash.new
                                            error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                            return @request_adapter.send_async(request_info, Binary, error_mapping)
                                        end
                                        ## 
                                        ## Get media content for the navigation property defaultPages from identity
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_get_request_information(request_configuration=nil)
                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                            request_info.url_template = @url_template
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :GET
                                            unless request_configuration.nil?
                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                request_info.add_request_options(request_configuration.options)
                                            end
                                            return request_info
                                        end
                                        ## 
                                        ## Update media content for the navigation property defaultPages in identity
                                        ## @param body Binary request body
                                        ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                        ## @return a request_information
                                        ## 
                                        def to_put_request_information(body, request_configuration=nil)
                                            raise StandardError, 'body cannot be null' if body.nil?
                                            request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                            request_info.url_template = @url_template
                                            request_info.path_parameters = @path_parameters
                                            request_info.http_method = :PUT
                                            unless request_configuration.nil?
                                                request_info.add_headers_from_raw_object(request_configuration.headers)
                                                request_info.add_request_options(request_configuration.options)
                                            end
                                            request_info.set_content_from_parsable(@request_adapter, "", body)
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
    end
end

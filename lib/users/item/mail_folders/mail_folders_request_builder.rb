require 'microsoft_kiota_abstractions'
require_relative '../../../microsoft_graph'
require_relative '../../../models/mail_folder'
require_relative '../../../models/mail_folder_collection_response'
require_relative '../../../models/o_data_errors/o_data_error'
require_relative '../../users'
require_relative '../item'
require_relative './count/count_request_builder'
require_relative './delta/delta_request_builder'
require_relative './mail_folders'

module MicrosoftGraph
    module Users
        module Item
            module MailFolders
                ## 
                # Provides operations to manage the mailFolders property of the microsoft.graph.user entity.
                class MailFoldersRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                    
                    ## 
                    # Provides operations to count the resources in the collection.
                    def count()
                        return MicrosoftGraph::Users::Item::MailFolders::Count::CountRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    # Provides operations to call the delta method.
                    def delta()
                        return MicrosoftGraph::Users::Item::MailFolders::Delta::DeltaRequestBuilder.new(@path_parameters, @request_adapter)
                    end
                    ## 
                    ## Instantiates a new MailFoldersRequestBuilder and sets the default values.
                    ## @param path_parameters Path parameters for the request
                    ## @param request_adapter The request adapter to use to execute the requests.
                    ## @return a void
                    ## 
                    def initialize(path_parameters, request_adapter)
                        super(path_parameters, request_adapter, "{+baseurl}/users/{user%2Did}/mailFolders{?%24top,%24skip,%24filter,%24count,%24orderby,%24select,%24expand}")
                    end
                    ## 
                    ## Get the mail folder collection directly under the root folder of the signed-in user. The returned collection includes any mail search folders directly under the root. By default, this operation does not return hidden folders. Use a query parameter _includeHiddenFolders_ to include them in the response.
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of mail_folder_collection_response
                    ## 
                    def get(request_configuration=nil)
                        request_info = self.to_get_request_information(
                            request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MailFolderCollectionResponse.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Use this API to create a new mail folder in the root folder of the user's mailbox. If you intend a new folder to be hidden, you must set the **isHidden** property to `true` on creation.
                    ## @param body The request body
                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                    ## @return a Fiber of mail_folder
                    ## 
                    def post(body, request_configuration=nil)
                        raise StandardError, 'body cannot be null' if body.nil?
                        request_info = self.to_post_request_information(
                            body, request_configuration
                        )
                        error_mapping = Hash.new
                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::MailFolder.create_from_discriminator_value(pn) }, error_mapping)
                    end
                    ## 
                    ## Get the mail folder collection directly under the root folder of the signed-in user. The returned collection includes any mail search folders directly under the root. By default, this operation does not return hidden folders. Use a query parameter _includeHiddenFolders_ to include them in the response.
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
                    ## Use this API to create a new mail folder in the root folder of the user's mailbox. If you intend a new folder to be hidden, you must set the **isHidden** property to `true` on creation.
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
                        request_info.set_content_from_parsable(@request_adapter, "application/json", body)
                        return request_info
                    end

                    ## 
                    # Get the mail folder collection directly under the root folder of the signed-in user. The returned collection includes any mail search folders directly under the root. By default, this operation does not return hidden folders. Use a query parameter _includeHiddenFolders_ to include them in the response.
                    class MailFoldersRequestBuilderGetQueryParameters
                        
                        ## 
                        # Include count of items
                        attr_accessor :count
                        ## 
                        # Expand related entities
                        attr_accessor :expand
                        ## 
                        # Filter items by property values
                        attr_accessor :filter
                        ## 
                        # Order items by property values
                        attr_accessor :orderby
                        ## 
                        # Select properties to be returned
                        attr_accessor :select
                        ## 
                        # Skip the first n items
                        attr_accessor :skip
                        ## 
                        # Show only the first n items
                        attr_accessor :top
                        ## 
                        ## Maps the query parameters names to their encoded names for the URI template parsing.
                        ## @param original_name The original query parameter name in the class.
                        ## @return a string
                        ## 
                        def get_query_parameter(original_name)
                            raise StandardError, 'original_name cannot be null' if original_name.nil?
                            case original_name
                                when "count"
                                    return "%24count"
                                when "expand"
                                    return "%24expand"
                                when "filter"
                                    return "%24filter"
                                when "orderby"
                                    return "%24orderby"
                                when "select"
                                    return "%24select"
                                when "skip"
                                    return "%24skip"
                                when "top"
                                    return "%24top"
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

require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../../../microsoft_graph'
require_relative '../../../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../../../../models/term_store/set'
require_relative '../../../../../../../../sites'
require_relative '../../../../../../../item'
require_relative '../../../../../../term_stores'
require_relative '../../../../../item'
require_relative '../../../../sets'
require_relative '../../../item'
require_relative '../../parent_group'
require_relative '../sets'
require_relative './children/children_request_builder'
require_relative './children/item/term_item_request_builder'
require_relative './item'
require_relative './relations/item/relation_item_request_builder'
require_relative './relations/relations_request_builder'
require_relative './terms/item/term_item_request_builder'
require_relative './terms/terms_request_builder'

module MicrosoftGraph
    module Sites
        module Item
            module TermStores
                module Item
                    module Sets
                        module Item
                            module ParentGroup
                                module Sets
                                    module Item
                                        ## 
                                        # Provides operations to manage the sets property of the microsoft.graph.termStore.group entity.
                                        class SetItemRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                            
                                            ## 
                                            # Provides operations to manage the children property of the microsoft.graph.termStore.set entity.
                                            def children()
                                                return MicrosoftGraph::Sites::Item::TermStores::Item::Sets::Item::ParentGroup::Sets::Item::Children::ChildrenRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the relations property of the microsoft.graph.termStore.set entity.
                                            def relations()
                                                return MicrosoftGraph::Sites::Item::TermStores::Item::Sets::Item::ParentGroup::Sets::Item::Relations::RelationsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            # Provides operations to manage the terms property of the microsoft.graph.termStore.set entity.
                                            def terms()
                                                return MicrosoftGraph::Sites::Item::TermStores::Item::Sets::Item::ParentGroup::Sets::Item::Terms::TermsRequestBuilder.new(@path_parameters, @request_adapter)
                                            end
                                            ## 
                                            ## Provides operations to manage the children property of the microsoft.graph.termStore.set entity.
                                            ## @param id Unique identifier of the item
                                            ## @return a term_item_request_builder
                                            ## 
                                            def children_by_id(id)
                                                raise StandardError, 'id cannot be null' if id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["term%2Did"] = id
                                                return MicrosoftGraph::Sites::Item::TermStores::Item::Sets::Item::ParentGroup::Sets::Item::Children::Item::TermItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Instantiates a new SetItemRequestBuilder and sets the default values.
                                            ## @param path_parameters Path parameters for the request
                                            ## @param request_adapter The request adapter to use to execute the requests.
                                            ## @return a void
                                            ## 
                                            def initialize(path_parameters, request_adapter)
                                                super(path_parameters, request_adapter, "{+baseurl}/sites/{site%2Did}/termStores/{store%2Did}/sets/{set%2Did}/parentGroup/sets/{set%2Did1}{?%24select,%24expand}")
                                            end
                                            ## 
                                            ## Delete navigation property sets for sites
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
                                            ## All sets under the group in a term [store].
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of set
                                            ## 
                                            def get(request_configuration=nil)
                                                request_info = self.to_get_request_information(
                                                    request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TermStore::Set.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Update the navigation property sets in sites
                                            ## @param body The request body
                                            ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                            ## @return a Fiber of set
                                            ## 
                                            def patch(body, request_configuration=nil)
                                                raise StandardError, 'body cannot be null' if body.nil?
                                                request_info = self.to_patch_request_information(
                                                    body, request_configuration
                                                )
                                                error_mapping = Hash.new
                                                error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                                return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::Models::TermStore::Set.create_from_discriminator_value(pn) }, error_mapping)
                                            end
                                            ## 
                                            ## Provides operations to manage the relations property of the microsoft.graph.termStore.set entity.
                                            ## @param id Unique identifier of the item
                                            ## @return a relation_item_request_builder
                                            ## 
                                            def relations_by_id(id)
                                                raise StandardError, 'id cannot be null' if id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["relation%2Did"] = id
                                                return MicrosoftGraph::Sites::Item::TermStores::Item::Sets::Item::ParentGroup::Sets::Item::Relations::Item::RelationItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Provides operations to manage the terms property of the microsoft.graph.termStore.set entity.
                                            ## @param id Unique identifier of the item
                                            ## @return a term_item_request_builder
                                            ## 
                                            def terms_by_id(id)
                                                raise StandardError, 'id cannot be null' if id.nil?
                                                url_tpl_params = @path_parameters.clone
                                                url_tpl_params["term%2Did"] = id
                                                return MicrosoftGraph::Sites::Item::TermStores::Item::Sets::Item::ParentGroup::Sets::Item::Terms::Item::TermItemRequestBuilder.new(url_tpl_params, @request_adapter)
                                            end
                                            ## 
                                            ## Delete navigation property sets for sites
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
                                            ## All sets under the group in a term [store].
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
                                            ## Update the navigation property sets in sites
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
                                            # All sets under the group in a term [store].
                                            class SetItemRequestBuilderGetQueryParameters
                                                
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
end

require 'microsoft_kiota_abstractions'
require_relative '../../../../../../../microsoft_graph'
require_relative '../../../../../../../models/o_data_errors/o_data_error'
require_relative '../../../../../../identity_governance'
require_relative '../../../../../entitlement_management'
require_relative '../../../../catalogs'
require_relative '../../../item'
require_relative '../../access_packages'
require_relative '../item'
require_relative './get_applicable_policy_requirements'

module MicrosoftGraph
    module IdentityGovernance
        module EntitlementManagement
            module Catalogs
                module Item
                    module AccessPackages
                        module Item
                            module GetApplicablePolicyRequirements
                                ## 
                                # Provides operations to call the getApplicablePolicyRequirements method.
                                class GetApplicablePolicyRequirementsRequestBuilder < MicrosoftKiotaAbstractions::BaseRequestBuilder
                                    
                                    ## 
                                    ## Instantiates a new GetApplicablePolicyRequirementsRequestBuilder and sets the default values.
                                    ## @param path_parameters Path parameters for the request
                                    ## @param request_adapter The request adapter to use to execute the requests.
                                    ## @return a void
                                    ## 
                                    def initialize(path_parameters, request_adapter)
                                        super(path_parameters, request_adapter, "{+baseurl}/identityGovernance/entitlementManagement/catalogs/{accessPackageCatalog%2Did}/accessPackages/{accessPackage%2Did}/getApplicablePolicyRequirements")
                                    end
                                    ## 
                                    ## In Azure AD entitlement management, this action retrieves a list of accessPackageAssignmentRequestRequirements objects that the currently signed-in user can use to create an accessPackageAssignmentRequest.  Each requirement object corresponds to an access package assignment policy that the currently signed-in user is allowed to request an assignment for.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a Fiber of get_applicable_policy_requirements_response
                                    ## 
                                    def post(request_configuration=nil)
                                        request_info = self.to_post_request_information(
                                            request_configuration
                                        )
                                        error_mapping = Hash.new
                                        error_mapping["4XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        error_mapping["5XX"] = lambda {|pn| MicrosoftGraph::Models::ODataErrors::ODataError.create_from_discriminator_value(pn) }
                                        return @request_adapter.send_async(request_info, lambda {|pn| MicrosoftGraph::IdentityGovernance::EntitlementManagement::Catalogs::Item::AccessPackages::Item::GetApplicablePolicyRequirements::GetApplicablePolicyRequirementsResponse.create_from_discriminator_value(pn) }, error_mapping)
                                    end
                                    ## 
                                    ## In Azure AD entitlement management, this action retrieves a list of accessPackageAssignmentRequestRequirements objects that the currently signed-in user can use to create an accessPackageAssignmentRequest.  Each requirement object corresponds to an access package assignment policy that the currently signed-in user is allowed to request an assignment for.
                                    ## @param request_configuration Configuration for the request such as headers, query parameters, and middleware options.
                                    ## @return a request_information
                                    ## 
                                    def to_post_request_information(request_configuration=nil)
                                        request_info = MicrosoftKiotaAbstractions::RequestInformation.new()
                                        request_info.url_template = @url_template
                                        request_info.path_parameters = @path_parameters
                                        request_info.http_method = :POST
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
end

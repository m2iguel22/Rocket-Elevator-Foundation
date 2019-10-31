class LeadsController < ApplicationController
    require "dropbox_api"
    skip_before_action :verify_authenticity_token

    def create
        @lead = Lead.new

        @lead.full_name = params['Name']
        @lead.company_name = params['Company']
        @lead.email = params['Email']
        @lead.phone = params['Phone']
        @lead.project_name = params['ProjectName']
        @lead.project_description = params['DepartmentInCharge']
        @lead.department_in_charge = params['ProjectDescription']
        @lead.message = params['Message']
        # @lead.attachment = params['Attachment']
        # @lead.attachment_name = params['Attachment']
        params_attach = params['Attachment']

        
        
        if params_attach
            @lead.attachment = params_attach.read
            @lead.original_filename = params_attach.original_filename
        end
       

        
            puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
            
            #   if @lead.attachment != nil
            # client = DropboxApi::Client.new(ENV['DROPBOX_OAUTH_BEARER'])
                
                
              
        if @lead.save!
        redirect_to quote_confirm_path
        else
            redirect_to root
        end
        # if params_attach
        #     asdf = params_attach.read
        #     asdf_name = params_attach.original_filename
        # end
       

        # client = DropboxApi::Client.new(ENV['DROPBOX_OAUTH_BEARER'])
        #     client.create_folder("/#{@lead.full_name}")
        #     client.upload("/#{@lead.full_name}/#{File.basename(asdf_name)}", asdf)
        #     puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
            
        #     #   if @lead.attachment != nil
        #     # client = DropboxApi::Client.new(ENV['DROPBOX_OAUTH_BEARER'])
                
                
              
        #  @lead.save!
        # redirect_to quote_confirm_path
end
end

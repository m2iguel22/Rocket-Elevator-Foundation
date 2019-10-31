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
        @lead.attachment = params['Attachment']
        @lead.attachment_name = params['Attachment']
        params_attach = params['Attachment']

        
        # @lead.attachment.attach(params['Attachment']) 

        # comment = Comment.create! params.require(:comment).permit(:content)
        # @lead.attachment.attach(params['Attachment'])
        # @lead.attachment = params_attach.original_filename
        # dropbox_client = DropboxApi::Client.new(ENV['DROPBOX_OAUTH_BEARER'])
        # file_content = params['Attachment']
        # dropbox_client.upload(@lead.image, file_content)
        # result = client.list_folder "/Rocket"

       
            bob = params_attach.read
            bob_name = params_attach.original_filename
        
        # redirect_to comment  
        
        # if verify_recaptcha(model: @lead)
        #     @lead.save!
        
        
        # else
        #     redirect_to root_path
        # end

        
            puts '!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!'
            
            #   if @lead.attachment != nil
                client = DropboxApi::Client.new(ENV['DROPBOX_OAUTH_BEARER'])
                result = client.list_folder ""
                result.entries
                result.has_more?
                # binary_content = IO.binread(bob).path
                # client.create_folder("/#{@lead.full_name}")
                # file_content = @lead.attachment.read @lead.attachment
                puts "??????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????"
                client.upload("/#{@lead.full_name}/#{File.basename(bob_name)}", bob)
                puts "TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTS"
                # if client.search("/#{self.full_name}/")
                #   lead.attachment = nil
                # #   lead.original_file_name = nil
                #   lead.save!
                #   end
                
              
            
              @lead.save!
              redirect_to quote_confirm_path
    end

end


# create folder
# upload --> folder #{asdf}
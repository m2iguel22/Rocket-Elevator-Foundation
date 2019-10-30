class LeadsController < ApplicationController

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
        # @lead.image = params['Attachment']

        
        # @lead.attachment.attach(params['Attachment']) 

        # comment = Comment.create! params.require(:comment).permit(:content)
        @lead.image.attach(params['Attachment'])
        
        # redirect_to comment  

        if verify_recaptcha(model: @lead)

            LeadmailMailer.welcome_email(@lead).deliver
 
           
 
            @lead.save!
 
            redirect_to quote_confirm_path
 
        else
 
             
 
            redirect_to root_path
 
        end
 
    end
 
 end
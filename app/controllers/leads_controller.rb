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

        
        @lead.attachment.attach(params['Attachment']) 

        @lead.save!
        
        redirect_to quote_confirm_path

    end
end

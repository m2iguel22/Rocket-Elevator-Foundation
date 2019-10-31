class Customer < ApplicationRecord
    belongs_to :lead, optional: true
    has_many :buildings
    belongs_to :address
    belongs_to :user

    after_update :dropbox
    
    
    self.all.each do |lead|


     def dropbox
        self.lead do |lead|
          if lead.attachment != nil
            client = DropboxApi::Client.new(ENV['DROPBOX_OAUTH_BEARER'])
            client.create_folder("/#{lead.full_name}")
            client.upload("/#{lead.full_name}/#{File.basename(lead.original_filename)}", lead.attachment)
                end
            end
        end
    end  
end         

class Lead < ApplicationRecord
    has_one :customer
    has_one_attached :file

    # DropboxApi::Client.new

    # before_save :dropbox

    # after_update :dropbox
    # def dropbox
    #     puts 'sadfjkhasdfkjhaskfjhasdkfjhaslkfjhasdlfkhasdlfkjhlkjahdlkasjhdflkasjh'
    #     Lead.all.each do |lead|
    #       if lead.attachment != nil
    #         client = DropboxApi::Client.new(ENV['DROPBOX_OAUTH_BEARER'])
    #         puts "Hello toesssssssssssssssssssssssssssssssssssssssssssssssss"
    #         client.upload("/#{self.full_name}/", lead.attachment)
    #         if client.search("/#{self.full_name}/")
    #           lead.attachment = nil
    #         #   lead.original_file_name = nil
    #           lead.save!
    #           end
    #         end
    #       end
    #     end

end

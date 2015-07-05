class Container < ActiveRecord::Base
  belongs_to :project
  belongs_to :table_specific
  self.inheritance_column = :filetype 
    def self.filetypes
      %w(Photo)
    end

    has_attached_file :image, 
    	   			  :styles=>{:medium => "300x300>", :thumb => "100x100>"},
    	   			  :path => ":rails_root/public/images/:id/:filename",
    				    :url  => "/images/:id/:filename"
    				  
  	validates_attachment_content_type :image, :content_type => %w(image/jpeg image/jpg image/png)
  	
end

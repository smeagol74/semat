class EssenceVersion < ActiveRecord::Base

  has_many :alphas

  def to_builder
    Jbuilder.encode do |json|
      json.version version
      #json.(@message, :created_at, :updated_at)
      #
      #json.author do
      #  json.name @message.creator.name.familiar
      #  json.email_address @message.creator.email_address_with_name
      #  json.url url_for(@message.creator, format: :json)
      #end
      #
      #if current_user.admin?
      #  json.visitors calculate_visitors(@message)
      #end
      #
      #json.comments @message.comments, :content, :created_at
      #
      #json.attachments @message.attachments do |attachment|
      #  json.filename attachment.filename
      #  json.url url_for(attachment)
      #end
    end
  end


end

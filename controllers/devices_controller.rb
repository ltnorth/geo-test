class DevicesController < Sinatra::Base

  set :root, File.join(File.dirname(__FILE__), '..')

  configure :development do
    register Sinatra::Reloader
  end

  get '/:id' do
    id = params[:id]
    Device.note(id).to_xml
  end
end
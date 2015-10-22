class FilesController < ApplicationController
  def download
    send_file params[:path]
  end
end

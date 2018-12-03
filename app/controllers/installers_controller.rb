class InstallersController < ApplicationController
  def show; end

  def download
    filepath = Rails.root.join 'public', 'download_test.txt'
    stat = File.stat filepath
    send_file filepath, filename: 'download_test.txt', length: stat.size
    render
  end
end

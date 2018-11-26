class DownloadsController < ApplicationController
  def index; end

  # REVIEW: DownloadsControllerにdownloadアクションがあるのが気持ち悪い
  def download
    filepath = Rails.root.join('public', 'download_test.txt')
    stat = File.stat(filepath)
    send_file(filepath, filename: 'download_test.txt', length: stat.size)
  end
end

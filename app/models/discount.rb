class Discount < ApplicationRecord
  belongs_to :partner

  after_create :qr_code

  def qr_code
    qr_code_title = [id.to_s,title.dasherize].join('')
    file_name = Rails.root.join('tmp',"#{qr_code_title}.png").to_s
    # byebug
    qrcode = RQRCode::QRCode.new(qr_code_title)
    png = qrcode.as_png(
      resize_gte_to: false,
      resize_exactly_to: false,
      fill: 'white',
      color: 'black',
      size: 1280,
      border_modules: 4,
      module_px_size: 6,
      file: file_name # path to write
      )
  end
end

require 'spec_helper'

module Spree
  describe UserMailer do
    USER_EMAIL = 'admin@mysite.com'

    let(:request) { create(:stock_request) }

    it 'back in stock' do
      @mail = UserMailer.back_in_stock(request)

      expect(@mail.subject).to eql(Spree.t(:back_in_stock_subject, product_name: request.product.name))
      expect(@mail.to).to include(request.email)
    end
  end
end

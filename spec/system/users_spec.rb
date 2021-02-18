require 'rails_helper'

RSpec.describe "ユーザー新規登録", type: :system do
  before do
    @user = FactoryBot.build(:user)
  end

  context 'ユーザー新規登録ができるとき' do
    it '正常に登録できるとユーザー新規登録ができて、indexページに遷移する' do
      
    end
  end
end

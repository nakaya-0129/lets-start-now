require 'rails_helper'

RSpec.describe User, type: :model do
  before do
    @user = FactoryBot.build(:user)
  end

 describe 'ユーザー新規登録' do
   it 'nicknameが空では登録できない' do
     @user.nick_name = ''
     @user.valid?
     expect(@user.errors.full_messages).to include "公開名は必須です"
   end

   it 'nicknameは10文字以上登録できない' do
     @user.nick_name = 'nakayanakaya'
     @user.valid?
     expect(@user.errors.full_messages).to include("公開名の制限を超えています")
   end
   it 'emailが空では登録できない' do
    @user.email = ''
    @user.valid?
    expect(@user.errors.full_messages).to include "メールアドレスは必須です"
   end

   it 'passwordが空では登録できない' do
     @user.password = ''
     @user.valid?
     expect(@user.errors.full_messages).to include "パスワードの入力は必須です"
   end

 end
end

require 'rails_helper'

RSpec.describe User, type: :model do
  describe "名前の表示" do
    it "年齢1:ユーザの名前が取得できること" do
      user = User.new(name: "satou", age: 1)
      expect(user.disp_name).to eq "satouちゃん"
    end

    it "年齢15:ユーザの名前が取得できること" do
      user = User.new(name: "satou", age: 15)
      expect(user.disp_name).to eq "satou君"
    end
  end
end

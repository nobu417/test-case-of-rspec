# coding: utf-8
require 'spec_helper'

describe User do

	describe "hello method" do
		# テストデータを入れる
		before do
			user = User.new
			user.name = 'テスト太郎'
			user.age = 30
			user.profile = '私は、エンジニアです'
			user.save
			@user = User.where("age = ?", 30).first
		end
		# 実際のテスト
		context 'normal case.' do
			it 'not null' do
				@user.hello.should_not be_nil
			end
			it 'name値の比較' do
				result_val = @user.hello
				result_val.should == 'テスト太郎でござる'
			end
		end

	end
end


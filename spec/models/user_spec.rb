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
			it 'user値がおかしい' do
				result_val = @user.hello
				result_val.should_not == 'でござる'
			end
		end

	end

	describe "find_by_scope_named_myself method" do
		# テストデータを入れる
		before do
			user = User.new
			user.name = 'テスト太郎'
			user.age = 30
			user.profile = '私は、エンジニアです'
			user.save
			@user = User.myself('テスト太郎').first
		end
		# 実際のテスト
		context 'normal case.' do
			it '値の確認' do
				@user.name.should == 'テスト太郎'
			end
		end
	end

	describe "find_by_scope_named_myage method" do
		# テストデータを入れる
		before do
			user = User.new
			user.name = 'テスト太郎'
			user.age = 30
			user.profile = '私は、エンジニアです'
			user.save
			@user = UserModelBase.search('テスト太郎')
		end
		# 実際のテスト
		context 'normal case.' do
			it '値の確認' do
				@user.name.should == 'テスト太郎'
			end
		end


	end

end


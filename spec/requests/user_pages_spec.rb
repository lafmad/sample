require 'spec_helper'

describe "User pages" do
	subject {page}

	describe "signup page" do
		before {visit signup_path}

		it {should have_selector('h1',test: 'Sign up')}
		it {should have_selector('title',test: full title('Sign up'))}
	end
end
	
end
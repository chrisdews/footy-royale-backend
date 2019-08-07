class TestFixturesController < ApplicationController
    def index
        testfixtures = TestFixture.all
        render json:testfixtures
    end
end

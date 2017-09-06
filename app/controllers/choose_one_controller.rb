class ChooseOneController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render plain: "hello, world!"
    end
end

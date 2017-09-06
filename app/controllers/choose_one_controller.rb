class ChooseOneController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render plain: params.inspect
    end
end

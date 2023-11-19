class ApplicationController < ActionController::API

rescue_from ActiveRecord::RecordNotFound, with: :record_not_found


private

def record_not_found
    redirect_to request.referer
end

end

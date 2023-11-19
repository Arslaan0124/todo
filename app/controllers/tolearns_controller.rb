class TolearnsController < ApplicationController

  # GET /tolearns
  def index
    @tolearns = Tolearn.all

    render json: @tolearns
  end

  # GET /tolearns/1
  def show
    render json: tolearn
  end

  # POST /tolearns
  def create
    @tolearn = Tolearn.new(tolearn_params)

    if @tolearn.save
      render json: @tolearn, status: :created, location: @tolearn
    else
      render json: @tolearn.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tolearns/1
  def update
    if tolearn.update(tolearn_params)
      render json: tolearn
    else
      render json: tolearn.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tolearns/1
  def destroy
    tolearn.destroy!
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tolearn
      @tolearn = Tolearn.find(params[:id])
    end

    def tolearn
      @tolearn ||= Tolearn.find_by(id: params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tolearn_params
      params.require(:tolearn).permit(:title, :text)
    end
end

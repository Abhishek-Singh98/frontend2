class ReviewsController < ApplicationController
  # before_action :set_review, only: %i[ show edit update destroy ]

  # GET /reviews or /reviews.json
  def index
    @review = Review.all
  end

  # GET /reviews/1 or /reviews/1.json
  def show
    @review = set_review
  end

  # GET /reviews/new
  def new
    @review = Review.new
  end

#   # GET /reviews/1/edit
   def edit
    @review = Review.new
   end

#   # POST /reviews or /reviews.json
   def create
     @review = Review.new(review_params)
     if @review.save
        flash[:notice]="Your review is succesfully created"
        redirect_to @review
        else
        render 'new'
      end
    end
  end

#   # PATCH/PUT /reviews/1 or /reviews/1.json
   def update
      @review = set_review
       if @review.update(review_params)
        flash[:notice]="Review was successfully updated."
        redirect_to @review
          else
         render 'edit'
       end
      end

  #   # DELETE /reviews/1 or /reviews/1.json
  #   def destroy
  #     @review.destroy

  #     respond_to do |format|
  #       format.html { redirect_to reviews_url, notice: "Review was successfully destroyed." }
  #       format.json { head :no_content }
  #     end
  #   end

   private
     # Use callbacks to share common setup or constraints between actions.
          def set_review
             @review = Review.find(params[:id])
          end

     # Only allow a list of trusted parameters through.
     def review_params
       params.require(:review).permit(:Description,:trainee_id)
     end

class QuotesController < ApplicationController
            def index
           @quote = Quote.order("RANDOM()").first
            end
            

            
            def create
                       @quote = Quote.create(quote_params)
                        if @quote.invalid?
                                    flash[:error] = '<strong> could not saved because of your fault </strong> the information you entered is lie'
                        end
                        redirect_to root_path
            end
            
            def about
            end
            
            private
            def quote_params
            params.require(:quote).permit(:saying, :author)
            end
end

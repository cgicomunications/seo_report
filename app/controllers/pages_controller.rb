class PagesController < ApplicationController
  
  
  def home
    render :layout => 'login'
  end
  
  def dashboard
  end
  
  def help
  end
  
  def display
    respond_to do |format|
      format.html do
        @format = 'html'
        render layout: 'report', format: 'html'
      end
      
      format.pdf do
        @format = 'pdf'
        render pdf: 'report', template: 'pages/display.html.erb', layout: 'pdf_report'
      end
    end
  end
end

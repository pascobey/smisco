class HomeController < ApplicationController

  def index
    @manufacturers = ['Volvo', 'Nissan', 'Infinity', 'BMW', 'Audi', 'Saab', 'Volkswagen', 'Honda', 'Hyundai', 'Toyota', 'Mazda']
    @reflex_pages ||= { 'HOME' => true }
    @survey = Survey.first
    @responses ||= @survey.responses_safe
    @radioed ||= ''
  end

end

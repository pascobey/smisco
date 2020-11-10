class SurveysController < ApplicationController

  def update
    @survey = Survey.first
    if @survey.update(survey_params)
      alert = 'Thanks for your response!'
    else
      alert = 'Response not saved!'
    end
    redirect_to(root_path, alert: alert)
  end

  private

    def survey_params
      params.require(:survey).permit(:responses)
    end

end

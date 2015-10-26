class CoachingsController < ApplicationController
  def ask
  end

  def answer
    @question = params[:question]
    @reponse = coach_answer_enhanced(@question)
  end


def coach_answer(your_message)
  if your_message == 'I am going to work right now!'
    return "ok Good"
  elsif your_message.strip.end_with? "?"
    return "Silly question, get dressed and go to work!"
  else
    return "I don't care, get dressed and go to work!"
  end
end

def coach_answer_enhanced(your_message)
  return "Ok good buddy" if your_message.downcase == 'i am going to work right now!'

  intro = ""
  intro = "I can feel your motivation! " if your_message == your_message.upcase

  classic_coach_message = coach_answer(your_message)
  return intro + classic_coach_message
end

end

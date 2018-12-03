class AnswerController < ApplicationController
  before_action :load_object, only: [:output_w, :output_m]
  # before_action :set_answers, only: [:output_w, :output_m]

  def output_w

  end

  def output_m

  end

  def output_r
    @female = User.where(gender: "female").first
    @male =  User.where(gender: "male").first

    @female_answers = []
    @male_answers = []

    set_answers(@female_answers, @female)
    set_answers(@male_answers, @male)
  end

  private
  def load_object
    @user = User.find(params[:id])
    if @user.gender == "female"
      @partner = User.where(gender: "male").first
    else
      @partner = User.where(gender: "female").first
    end

    @partner_answers = []
    set_answers(@partner_answers, @partner)
  end

  def set_answers(partner_answers, partner)
    # @partner_answers = []
    partner_answers << Answer.find(partner.answer_0_id)
    partner_answers << Answer.find(partner.answer_1_id)
    partner_answers << Answer.find(partner.answer_2_id)
    partner_answers << Answer.find(partner.answer_3_id)
    partner_answers << Answer.find(partner.answer_4_id)
    # partner_answers << Answer.find(partner.answer_5_id)
    # partner_answers << Answer.find(partner.answer_6_id)
    # partner_answers << Answer.find(partner.answer_7_id)
    # partner_answers << Answer.find(partner.answer_8_id)
    # partner_answers << Answer.find(partner.answer_9_id)
  end
end

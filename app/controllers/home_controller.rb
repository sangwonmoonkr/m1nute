class HomeController < ApplicationController
  def index

  end
  def link
    # puts("==========")
    # puts(request.fullpath)
    # puts(request.host_with_port)
    # puts(request.protocol)
    # puts(request.protocol + request.host_with_port)
    # puts("==========")
    @domain = request.host_with_port

    female = User.where(gender: "female").first
    reset_categories(female)
    reset_partner_answer(female)
    male = User.where(gender: "male").first
    reset_categories(male)
    reset_partner_answer(male)
  end

  private
  def reset_categories(man)
    man.update(category_0_id: nil)
    man.update(category_1_id: nil)
    man.update(category_2_id: nil)
  end

  private
  def reset_partner_answer(partner)
    partner.update(answer_0_id: nil)
    partner.update(answer_1_id: nil)
    partner.update(answer_2_id: nil)
    partner.update(answer_3_id: nil)
    partner.update(answer_4_id: nil)
    partner.update(answer_5_id: nil)
    partner.update(answer_6_id: nil)
    partner.update(answer_7_id: nil)
    partner.update(answer_8_id: nil)
    partner.update(answer_9_id: nil)
  end


end

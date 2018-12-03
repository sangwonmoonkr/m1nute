class UserController < ApplicationController
  before_action :load_object, only: [:show, :edit, :destroy, :update, :loading, :edit_question_type1, :edit_question_type2, :edit_question_type3]
  before_action :load_question, only: [:edit_question_type1, :edit_question_type2, :edit_question_type3]
  @@female_questions = []
  @@male_questions = []

  def create
  end

  def read
  end

  def update

    @user.update(user_params)

    # 여기서 분기 해야함
    if user_params[:category_0_id] || user_params[:category_1_id] || user_params[:category_2_id]
      # category 선택 끝나서 로딩화면으로
      redirect_to loading_user_index_path(id: @user.id)
    else
      # 앞의 문제 답변 끝나서 다음 문제로 넘길지 검증 함수
      redirect_question
    end
  end

  def delete
  end

  def edit
    # edit category
    # 여기에서 user의 category 선택을 초기화해줘야할 듯

    # patch로 연결
  end

  def loading
    # 카테고리 끝 // 답변 끝 - 구분
    if params[:finished]
      # 답변끝
      puts("+++++답변끝++++++")
      # 여기 상대가 답변했는지 검사해야함
      if @user.gender == "female"
        partner = User.where(gender: "male").first
        # unless partner.answer_9_id.nil? || partner.answer_9_id == 0
        unless partner.answer_4_id.nil? || partner.answer_4_id == 0
          redirect_to answer_output_w_path(id: params[:id])
        end
      elsif @user.gender == "male"
        partner = User.where(gender: "female").first
        # unless partner.answer_9_id.nil? || partner.answer_9_id == 0
        unless partner.answer_4_id.nil? || partner.answer_4_id == 0
          redirect_to answer_output_m_path(id: params[:id])
        end
      else
      end

    else
      # 카테고리 끝
      # 여기서 상대편 선택여부 측정
      if @user.gender == "female"
        partner = User.where(gender: "male").first
        unless partner.category_0_id.nil? || partner.category_0_id == 0
          # 남자 선택 완료
          # 선택한 문제 구성
          @@female_questions.clear
          #reset_partner_answer(partner)

          cats = [partner.category_0_id, partner.category_1_id, partner.category_2_id]
          # @@female_questions = Question.where.not(id: cats).sample(7)
          @@female_questions = Question.where.not(id: cats).sample(2)
          cats.each do |cat|
            @@female_questions.push(Question.where(category_id: cat).sample(1).first
          )
          end
          @@female_questions.each do |q|
            puts(q.id)
          end

          # 다음 페이지 연결
          female_redirect_to_question
        end
      elsif @user.gender == "male"
        partner = User.where(gender: "female").first
        unless partner.category_0_id.nil? || partner.category_0_id == 0
          # 여자 선택 완료
          # 선택한 문제 구성
          @@male_questions.clear
          #reset_partner_answer(partner)

          cats = [partner.category_0_id, partner.category_1_id, partner.category_2_id]
          # @@male_questions = Question.where.not(id: cats).sample(7)
          @@male_questions = Question.where.not(id: cats).sample(2)
          cats.each do |cat|
            @@male_questions.push(Question.where(category_id: cat).sample(1).first
          )
          end

          # 다음 페이지 연결
          male_redirect_to_question
        end
      else
        # 아니면 그냥 로딩 화면 띄움
      end
    end

  end

  def edit_question_type1
  end

  def edit_question_type2
  end

  def edit_question_type3
  end


  #private
  #def reset_partner_answer(partner)
  #  partner.update(answer_0_id: nil)
  #  partner.update(answer_1_id: nil)
  #  partner.update(answer_2_id: nil)
  #  partner.update(answer_3_id: nil)
  #  partner.update(answer_4_id: nil)
  #  partner.update(answer_5_id: nil)
  #  partner.update(answer_6_id: nil)
  #  partner.update(answer_7_id: nil)
  #  partner.update(answer_8_id: nil)
  #  partner.update(answer_9_id: nil)
  #end

  def redirect_question
    if @user.gender == "female"
      @@female_questions.shift
      female_redirect_to_question
    elsif @user.gender == "male"
      @@male_questions.shift
      male_redirect_to_question
    else
    end
  end

  def female_redirect_to_question
    if @@female_questions.count > 0 # begin
      q_type = @@female_questions.first.question_type_id
      if q_type == 1
        redirect_to edit_question_type1_user_path(id: @user.id, question_id: @@female_questions.first.id)
      elsif q_type == 2
        redirect_to edit_question_type2_user_path(id: @user.id, question_id: @@female_questions.first.id)
      else
        redirect_to edit_question_type3_user_path(id: @user.id, question_id: @@female_questions.first.id)
      end
    else # rescue
      redirect_to loading_user_index_path(id: @user.id, finished: true)
    end
  end

  def male_redirect_to_question
    if @@male_questions.count > 0
      q_type = @@male_questions.first.question_type_id
      if q_type == 1
        redirect_to edit_question_type1_user_path(id: @user.id, question_id: @@male_questions.first.id)
      elsif q_type == 2
        redirect_to edit_question_type2_user_path(id: @user.id, question_id: @@male_questions.first.id)
      else
        redirect_to edit_question_type3_user_path(id: @user.id, question_id: @@male_questions.first.id)
      end
    else
      redirect_to loading_user_index_path(id: @user.id, finished: true)
    end
  end

  def user_params
    params.require(:user).permit(:category_0_id, :category_1_id, :category_2_id, :answer_0_id, :answer_1_id, :answer_2_id, :answer_3_id, :answer_4_id, :answer_5_id, :answer_6_id, :answer_7_id, :answer_8_id, :answer_9_id)
  end

  def load_object
    @user = User.find(params[:id])
  end

  def load_question
    @question = Question.find(params[:question_id])
    @female_question_index = 5 - @@female_questions.count
    @male_question_index = 5 - @@male_questions.count
    # @female_question_index = 10 - @@female_questions.count
    # @male_question_index = 10 - @@male_questions.count
  end
end

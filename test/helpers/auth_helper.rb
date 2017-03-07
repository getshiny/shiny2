module AuthHelper

  def login_form
    get auth_login_url
    assert_response :success
    assert_select "form[action=?]", auth_code_path do
      assert_select '#phoneNumber'
      assert_select 'input[type=?]', "submit"
    end
  end

  def request_code(params)
    post auth_code_url, params: params
    assert_response :redirect
    follow_redirect!
    assert_redirected_to auth_url(id: params['phoneNumber'])
  end

end

<section class="category-course-list-area">
    <div class="container">
        <div class="row justify-content-center">
            <div class="col-lg-6">
              <div class="user-dashboard-box mt-3">
                  <div class="user-dashboard-content w-100 login-form">
                      <div class="content-title-box">
                          <div class="title"><?php echo get_phrase('login'); ?></div>
                      </div>
                      <form action="<?php echo site_url('login/validate_login/user'); ?>" method="post">
                          <div class="content-box">
                              <div class="basic-group">
                                  <div class="form-group">
                                      <label for="login-email"><span class="input-field-icon"><i class="fas fa-envelope"></i></span> <?php echo get_phrase('email'); ?>:</label>
                                      <input type="email" class="form-control" name = "email" id="login-email" placeholder="<?php echo get_phrase('email'); ?>" value="" required>
                                  </div>
                                  <div class="form-group">
                                      <label for="login-password"><span class="input-field-icon"><i class="fas fa-lock"></i></span> <?php echo get_phrase('password'); ?>:</label>
                                      <input type="password" class="form-control" name = "password" placeholder="<?php echo get_phrase('password'); ?>" value="" required>
                                  </div>
                              </div>
                          </div>
                          <div class="content-update-box">
                              <button type="submit" class="btn">Log In</button>
                          </div>
                          <div class="forgot-pass text-center">
                              <span>Forgot Password?</span>
                              <a href="javascript::" onclick="toggoleForm('forgot_password')">click here</a>
                          </div>
                      </form>
                  </div>

                  <div class="user-dashboard-content w-100 forgot-password-form hidden">
                      <div class="content-title-box">
                          <div class="title"><?php echo get_phrase('forgot_password'); ?></div>
                          <div class="subtitle"><?php echo get_phrase('provide_your_email_address_to_get_password'); ?>.</div>
                      </div>
                      <form action="<?php echo site_url('login/forgot_password/frontend'); ?>" method="post">
                          <div class="content-box">
                              <div class="basic-group">
                                  <div class="form-group">
                                      <label for="forgot-email"><span class="input-field-icon"><i class="fas fa-envelope"></i></span> <?php echo get_phrase('email'); ?>:</label>
                                      <input type="email" class="form-control" name = "email" id="forgot-email" placeholder="<?php echo get_phrase('email'); ?>" value="" required>
                                      <small class="form-text text-muted"><?php echo get_phrase('provide_your_email_address_to_get_password'); ?>.</small>
                                  </div>
                              </div>
                          </div>
                          <div class="content-update-box">
                              <button type="submit" class="btn"><?php echo get_phrase('reset_password'); ?></button>
                          </div>
                          <div class="forgot-pass text-center">
                              <?php echo get_phrase('want_to_go_back'); ?>? <a href="javascript::" onclick="toggoleForm('login')"><?php echo get_phrase('login'); ?></a>
                          </div>
                      </form>
                  </div>
              </div>
            </div>
        </div>
    </div>
</section>

<script type="text/javascript">
  function toggoleForm(form_type) {
    if (form_type === 'login') {
      $('.login-form').show();
      $('.forgot-password-form').hide();
      $('.register-form').hide();
    }else if (form_type === 'forgot_password') {
      $('.login-form').hide();
      $('.forgot-password-form').show();
      $('.register-form').hide();
    }
  }
</script>

        <div class="launching_soon_container">
            <?php if($this->request->data) {
            ?>
            <div class="alert <?php if($this->request->data[0]==false) { echo 'alert-danger'; } else { echo 'alert-success'; } ?> alert-dismissable">
                <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button>
                <?php if($this->request->data[0]==false) { ?>
                    <p>Mail to your id cannot be sent. Please ensure that it exists.</p>
                <?php }
                else { ?>
                    <p>You have been successfully subscribed to our notifications</p>
                <?php } ?>
            </div>
            <?php } ?>
            <div class="launching_soon_content">
                <img src="<?php echo $this->webroot; ?>images/logo_launching.png">
                <p>Wait for us to launch, we will surely double your fun.</p>
                <p>Don’t think we are not in service. We have not yet launched our website but still we can provide you with the best holiday deals. Write to us at <a href="mailto:travel@waytofun.com">travel@waytofun.com</a>, tell us where you want to go &amp; we will send you the offers which can make your holiday super-duper fun.</p>
                <form class="subscribe_email_form js-validate" action="<?php echo $this->here; ?>" method="post">
                    <h3>Enter your Email ID below to get notified about our launch &amp; subscribe to WTF blogs.</h3>
                    <div class="form-group clearfix">
                        <input type="email" class="form-control form-inline js-required js-email" placeholder="Email Address" name="data[Subscriber][email]">
                        <button class="btn-primary" type="submit">Subscribe</button>
                    </div>
                </form>
                <img class="short_logo" src="<?php echo $this->webroot; ?>images/short_logo.png">
            </div>
        </div>
        <ul class="social_tabs_container">
            <li><a href="https://www.facebook.com/WaytoFunWTF" class="icon-facebook" target="_blank"><span>Facebook</span></a></li>
            <li><a href="https://twitter.com/WayToFunWTF" class="icon-twitter"><span>Twitter</span></a></li>
            <!-- <li><a href="#" class="icon-linkedin"><span>Linkedin</span></a></li> -->
        </ul>
        <div class="cycle-slideshow launching_soon_slider_wrap" data-cycle-fx="fade" data-cycle-timeout="4000" data-cycle-slides=".background_slides" data-cycle-swipe="false" data-cycle-allow-wrap="true" data-cycle-log="false">
            <div class="background_slides" style="background:url('<?php echo $this->webroot; ?>images/slider_img1.jpg');background-size:cover;"></div>
            <div class="background_slides" style="background:url('<?php echo $this->webroot; ?>images/slider_img2.jpg');background-size:cover;"></div>
            <div class="background_slides" style="background:url('<?php echo $this->webroot; ?>images/slider_img3.jpg');background-size:cover;"></div>
        </div>
    </body>
</html>
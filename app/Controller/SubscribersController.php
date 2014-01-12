<?php
class SubscribersController extends AppController {
    public function launching_soon_home() {
        $this->layout='launching_soon';
        if ($this->request->is('post')) {
            // $this->Subscriber->set($this->request->data);
            $to = $this->request->data['Subscriber']['email'];
            $subject = "Subscription successful";
            $message = "Thanks, you have successfully subscribed to updates and notifications from WayToFun";
            $header = 'From: WayToFun Info <info@waytofun.com>'."\r\n";
            $mailSent = mail($to, $subject, $message, $header);
            $this->request->data[] = $mailSent;
            if($mailSent) {
                mail("ishu.madan@waytofun.com, ishu.madan91@gmail.com","Email Subscription", "The following addess has been subscribed to  WayToFun updates: ".$to, $header );
                $this->Subscriber->create();
                if ($this->Subscriber->save($this->request->data)) {
                    return;
                }
            }
        }
    }
}
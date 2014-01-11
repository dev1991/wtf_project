<?php
class Subscriber extends AppModel {
    public $validate = array(
        'email' => array(
            'rule' => 'notEmpty'
        )
    );
}
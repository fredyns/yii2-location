<?php

namespace fredyns\region;

/**
 * location module definition class
 */
class Module extends \yii\base\Module
{
    /**
     * @inheritdoc
     */
    public $id = 'region';

    /**
     * @inheritdoc
     */
    public $defaultRoute = 'area';

    /**
     * @inheritdoc
     */
    public $controllerNamespace = 'fredyns\region\controllers';

    /**
     * @inheritdoc
     */
    public function init()
    {
        parent::init();

        // custom initialization code goes here
    }
}
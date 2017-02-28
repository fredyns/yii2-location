<?php

use yii\helpers\Html;

$this->title = Yii::t('app', 'Location');
$this->params['breadcrumbs'][] = [
    'label' => Yii::t('app', 'Location'),
    'url' => [
        '/'.Yii::$app->controller->module->id,
    ],
];
?>
<div class="location-default-index">

    <h1><?= $this->title ?></h1>

    <p>
        Location & postcode database for Yii2 Framework.<br/>
        Included Indonesian database based on Ministry of Home Affairs regulation sequence 56 at 2015.

        <?=
        Html::ol(
            [
            //Html::a('____', ['____/index']),
            ], [
            'encode' => false,
            ]
        );
        ?>
    </p>

    <hr/>

    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>
    <br/>


</div>

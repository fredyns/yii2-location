<?php

use yii\helpers\Html;

$this->title = Yii::t('app', 'Region');
$this->params['breadcrumbs'][] = [
    'label' => $this->title,
    'url' => [
        '/'.Yii::$app->controller->module->id,
    ],
];
?>
<div class="location-default-index">

    <h1><?= $this->title ?></h1>

    <p>
        Region & postcode module with Indonesian database included for Yii2 Framework.<br/>
        Indonesian database based on Ministry of Home Affairs regulation sequence 56 at 2015.

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

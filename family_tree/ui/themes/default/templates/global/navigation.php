    <div id="topmenu">
        <ul id="navigation">
            <li class="main">
                <a class="main" href="<?php echo $TMPL['path'].'index.php';?>"><?php echo T_pgettext('The beginning or starting place.', 'Главная');?></a>
            </li>
            <li class="main dropdown">
                <a class="main" href="<?php echo $TMPL['path'].$TMPL['nav-link'][2][0]['url'];?>"><?php echo $TMPL['nav-link']['my-stuff'];?><![if gt IE 6]></a><![endif]><!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
<?php foreach($TMPL['nav-link'][2] as $nav): ?>
                    <li class="sub"><a class="sub" href="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></a></li>
<?php endforeach; ?>
                </ul>
            <!--[if lte IE 6]></td></tr></table></a><![endif]--></li>
            <li class="main dropdown">
                <a class="main" href="<?php echo $TMPL['path'].$TMPL['nav-link'][3][0]['url'];?>"><?php echo T_('Общаться');?><![if gt IE 6]></a><![endif]><!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
<?php foreach($TMPL['nav-link'][3] AS $nav): ?>
                    <li class="sub"><a class="sub" href="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></a></li>
<?php endforeach; ?>
                </ul>
            <!--[if lte IE 6]></td></tr></table></a><![endif]--></li>
            <li class="main dropdown">
                <a class="main" href="<?php echo $TMPL['path'].$TMPL['nav-link'][4][0]['url'];?>"><?php echo T_('Общий доступ');?><![if gt IE 6]></a><![endif]><!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
<?php foreach($TMPL['nav-link'][4] AS $nav):?>
                    <li class="sub"><a class="sub" href="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></a></li>
<?php endforeach; ?>
                </ul>
            <!--[if lte IE 6]></td></tr></table></a><![endif]--></li>
            <li class="main dropdown">
                <a class="main" href="<?php echo $TMPL['path'].'members.php';?>"><?php echo T_('Связь');?><![if gt IE 6]></a><![endif]><!--[if lte IE 6]><table><tr><td><![endif]-->
                <ul class="sub">
<?php foreach($TMPL['nav-link'][5] AS $nav):?>
                    <li class="sub"><a class="sub" href="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></a></li>
<?php endforeach; ?>
                </ul>
            <!--[if lte IE 6]></td></tr></table></a><![endif]--></li>
<?php if (isset($TMPL['nav-link'][6])): ?>
            <li class="main">
                <a class="main" href="<?php echo $TMPL['path'].'admin/index.php';?>"><?php echo T_('Админка');?></a>
            </li>
<?php endif; ?>
        </ul>
    </div>

    <select id="mobile-topmenu">
        <option><?php echo T_('Навигация');?></option>
        <option value="<?php echo $TMPL['path'].'index.php';?>"><?php echo T_pgettext('The beginning or starting place.', 'Главная');?></option>
<?php foreach($TMPL['nav-link'][2] as $nav): ?>
        <option value="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></option>
<?php endforeach; ?>
<?php foreach($TMPL['nav-link'][3] AS $nav): ?>
        <option value="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></option>
<?php endforeach; ?>
<?php foreach($TMPL['nav-link'][4] AS $nav): ?>
        <option value="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></option>
<?php endforeach; ?>
<?php foreach($TMPL['nav-link'][5] AS $nav): ?>
        <option value="<?php echo $TMPL['path'].$nav['url'];?>"><?php echo $nav['text'];?></option>
<?php endforeach; ?>
    </select>

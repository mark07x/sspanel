


{include file='user/main.tpl'}

	<main class="content">
		<div class="content-header ui-content-header">
			<div class="container">
				<h1 class="content-heading">修改资料</h1>
			</div>
		</div>
		<div class="container">
			<section class="content-inner margin-top-no">
             


					<div class="col-xx-12 col-sm-6">
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
									<div class="cardbtn-edit">
										<div class="card-heading">账号登录密码修改</div>
										<button class="btn btn-flat waves-attach" id="pwd-update"><span class="icon">check</span>&nbsp;</button>
									</div>
										<div class="form-group form-group-label">
											<label class="floating-label" for="oldpwd">当前密码</label>
											<input class="form-control maxwidth-edit" id="oldpwd" type="password">
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="pwd">新密码</label>
											<input class="form-control maxwidth-edit" id="pwd" type="password">
										</div>

										<div class="form-group form-group-label">
											<label class="floating-label" for="repwd">确认新密码</label>
											<input class="form-control maxwidth-edit" id="repwd" type="password">
										</div>
									</div>
									
								</div>
							</div>
						</div>

                                                <div class="card margin-bottom-no">	
							<div class="card-main">	
								<div class="card-inner">	
									<div class="card-inner">
										<div class="cardbtn-edit">
												<p class="card-heading">用户UUID重置</p>
												<button class="btn btn-flat waves-attach" id="ss-pwd-update"><span class="icon">check</span>&nbsp;</button>
										</div>
 									</div>	
								</div>	
							</div>	
						</div>	
                      	
                    	
                      


						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">主题修改</div>
												<button class="btn btn-flat waves-attach" id="theme-update"><span class="icon">check</span>&nbsp;</button>
										</div>
										<p>当前主题：<code data-default="theme">{$user->theme}</code></p>
										<div class="form-group form-group-label control-highlight-custom dropdown">
											<label class="floating-label" for="theme">主题</label>
											<button id="theme" type="button" class="form-control maxwidth-edit" data-toggle="dropdown" value="{$user->theme}">
												
											</button>
											<ul class="dropdown-menu" aria-labelledby="mail">
												{foreach $themes as $theme}
												<li><a href="#" class="dropdown-option" onclick="return false;" val="{$theme}" data="theme">{$theme}</a></li>
												{/foreach}
											</ul>
										</div>
								        </div>
							        </div>
						        </div> 
                            </div>
				        </div>  


					<div class="col-xx-12 col-sm-6">

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">IP解封</div>
												<button class="btn btn-flat waves-attach" id="unblock"><span class="icon">not_interested</span>&nbsp;</button>
										</div>
										<p>当前状态：<code id="ajax-block">{$Block}</code></p>

									</div>
								</div>
							</div>
						</div> 

	

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">每日邮件接收设置</div>
												<button class="btn btn-flat waves-attach" id="mail-update"><span class="icon">check</span>&nbsp;</button>
										</div>
										<p class="card-heading"></p>
										<p>当前设置：<code id="ajax-mail" data-default="mail">{if $user->sendDailyMail==1}发送{else}不发送{/if}</code></p>
										<div class="form-group form-group-label control-highlight-custom dropdown">
											<label class="floating-label" for="mail">发送设置</label>
											<button type="button" id="mail" class="form-control maxwidth-edit" data-toggle="dropdown" value="{$user->sendDailyMail}">
												
											</button>
											<ul class="dropdown-menu" aria-labelledby="mail">
												<li><a href="#" class="dropdown-option" onclick="return false;" val="1" data="mail">发送</a> </li>
												<li><a href="#" class="dropdown-option" onclick="return false;" val="0" data="mail">不发送</a></li>
											</ul>
										</div>
									</div>
								</div>
							</div>
						</div>



						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<p class="card-heading">两步验证</p>
										<p>请下载 Google 的两步验证器，扫描下面的二维码。</p>
										<p><i class="icon icon-lg" aria-hidden="true">android</i><a href="https://play.google.com/store/apps/details?id=com.google.android.apps.authenticator2">&nbsp;Android</a></p>
										<p><i class="icon icon-lg" aria-hidden="true">tablet_mac</i><a href="https://itunes.apple.com/cn/app/google-authenticator/id388497605?mt=8">&nbsp;iOS</a></p>
										<p>在没有测试完成绑定成功之前请不要启用。</p>
										<p>当前设置：<code data-default="ga-enable">{if $user->ga_enable==1} 要求验证 {else} 不要求 {/if}</code></p>
										<p>当前服务器时间：{date("Y-m-d H:i:s")}</p>
										<div class="form-group form-group-label control-highlight-custom dropdown">
											<label class="floating-label" for="ga-enable">验证设置</label>
											<button type="button" id="ga-enable" class="form-control maxwidth-edit" data-toggle="dropdown" value="{$user->ga_enable}">
												{* <option value="0">不要求</option>
												<option value="1">要求验证</option> *}
											</button>
											<ul class="dropdown-menu" aria-labelledby="ga-enable">
												<li><a href="#" class="dropdown-option" onclick="return false;" val="0" data="ga-enable">不要求</a> </li>
												<li><a href="#" class="dropdown-option" onclick="return false;" val="1" data="ga-enable">要求验证</a></li>
											</ul>
										</div>


										<div class="form-group form-group-label">
											<div class="text-center">
												<div id="ga-qr" class="qr-center"></div>
												密钥：{$user->ga_token}
											</div>
										</div>


										<div class="form-group form-group-label">
											<label class="floating-label" for="code">测试一下</label>
											<input type="text" id="code" placeholder="输入验证器生成的数字来测试" class="form-control maxwidth-edit">
										</div>

									</div>
									<div class="card-action">
										<div class="card-action-btn pull-left">
											<a class="btn btn-brand-accent btn-flat waves-attach" href="/user/gareset"><span class="icon">format_color_reset</span>&nbsp;重置</a>
											<button class="btn btn-flat waves-attach" id="ga-test" ><span class="icon">extension</span>&nbsp;测试</button>
											<button class="btn btn-brand btn-flat waves-attach" id="ga-set" ><span class="icon">perm_data_setting</span>&nbsp;设置</button>
										</div>
									</div>
								</div>
							</div>
						</div>    

						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
										<div class="cardbtn-edit">
												<div class="card-heading">自定义规则</div>
												<button class="btn btn-flat waves-attach" id="setpac"><span class="icon">settings</span>&nbsp;</button>
										</div>
										<p>适用于ACL/PAC/Surge</p>
										<p>格式参看<a href="https://adblockplus.org/zh_CN/filters">撰写 Adblock Plus 过滤规则</a></p>
										<p>IP 段请使用 |127.0.0.0/8 类似格式表示</p>
										<div class="form-group form-group-label control-highlight-custom">
											<label class="floating-label" for="pac">规则书写区</label>
											<code contenteditable="true" class="form-control maxwidth-edit" id="pac">{$user->pac}</code>
										</div>

									</div>
					
								</div>
							</div>
						</div>

						{if $config['enable_telegram'] == 'true'}
						<div class="card margin-bottom-no">
							<div class="card-main">
								<div class="card-inner">
									<div class="card-inner">
									{if $user->telegram_id != 0}
										<div class="cardbtn-edit">
												<div class="card-heading">Telegram 绑定</div>
												<div><a class="btn btn-flat btn-brand-accent waves-attach" href="/user/telegram_reset"><span class="icon">not_interested</span>&nbsp;</a></div>
										</div>{/if}
                                      {if $user->telegram_id == 0}
										<p>Telegram 添加机器人账号 <a href="https://t.me/{$telegram_bot}">@{$telegram_bot}</a>，拍下下面这张二维码发给它。</p>
										<div class="form-group form-group-label">
											<div class="text-center">
												<div id="telegram-qr" class="qr-center"></div>
												{elseif $user->telegram_id != 0}
												当前绑定Telegram账户：<a href="https://t.me/{$user->im_value}">@{$user->im_value}</a>
												{/if}
									        </div>
									    </div>
								    </div>
							    </div>
						    </div>
					    </div>
						{/if}
					




					{include file='dialog.tpl'}

			</section>
		</div>
	</main>







{include file='user/footer.tpl'}

<script>
$(function(){
	new Clipboard('.copy-text');
});

$(".copy-text").click(function () {
	$("#result").modal();
	$("#msg").html("已复制到您的剪贴板。");
});


</script>

<script>
    $(document).ready(function () {
        $("#portreset").click(function () {
            $.ajax({
                type: "POST",
                url: "resetport",
                dataType: "json",
                data: {

                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-port").html(data.msg);
						$("#msg").html("设置成功，新端口是"+data.msg);
						
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#portspecify").click(function () {
            $.ajax({
                type: "POST",
                url: "specifyport",
                dataType: "json",
                data: {
					port: $("#port-specify").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-port").html($("#port-specify").val());
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>
<script>
    $(document).ready(function () {
        $("#setpac").click(function () {
            $.ajax({
                type: "POST",
                url: "pacset",
                dataType: "json",
                data: {
                   pac: $("#pac").text()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "password",
                dataType: "json",
                data: {
                    oldpwd: $("#oldpwd").val(),
                    pwd: $("#pwd").val(),
                    repwd: $("#repwd").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
	var ga_qrcode = '{$user->getGAurl()}',
        qrcode1 = new QRCode(document.getElementById("ga-qr"));
    qrcode1.clear();
    qrcode1.makeCode(ga_qrcode);

	{if $config['enable_telegram'] == 'true'}
	var telegram_qrcode = 'mod://bind/{$bind_token}',
        qrcode2 = new QRCode(document.getElementById("telegram-qr"));
    qrcode2.clear();
    qrcode2.makeCode(telegram_qrcode);
	{/if}
</script>


<script>
    $(document).ready(function () {
        $("#wechat-update").click(function () {
            $.ajax({
                type: "POST",
                url: "wechat",
                dataType: "json",
                data: {
                    wechat: $("#wechat").val(),
					imtype: $("#imtype").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-im").html($("#imtype").find("option:selected").text()+" "+$("#wechat").val());
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#ssr-update").click(function () {
            $.ajax({
                type: "POST",
                url: "ssr",
                dataType: "json",
                data: {
                    protocol: $("#protocol").val(),
					obfs: $("#obfs").val(),
					obfs_param: $("#obfs-param").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-protocol").html($("#protocol").val());
						$("#ajax-user-obfs").html($("#obfs").val());
						$("#ajax-user-obfs-param").html($("#obfs-param").val());
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#relay-update").click(function () {
            $.ajax({
                type: "POST",
                url: "relay",
                dataType: "json",
                data: {
                    relay_enable: $("#relay_enable").val(),
					relay_info: $("#relay_info").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#unblock").click(function () {
            $.ajax({
                type: "POST",
                url: "unblock",
                dataType: "json",
                data: {
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-block").html("IP: "+data.msg+" 没有被封");
						$("#msg").html("发送解封命令解封 "+data.msg+" 成功");
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-test").click(function () {
            $.ajax({
                type: "POST",
                url: "gacheck",
                dataType: "json",
                data: {
                    code: $("#code").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ga-set").click(function () {
            $.ajax({
                type: "POST",
                url: "gaset",
                dataType: "json",
                data: {
                    enable: $("#ga-enable").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#ss-pwd-update").click(function () {
            $.ajax({
                type: "POST",
                url: "sspwd",
                dataType: "json",
                data: {
                    sspwd: Math.random().toString(36).substring(2)
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-user-passwd").html($("#sspwd").val());
						$("#msg").html("修改成功");
                    } else {
                        $("#result").modal();
						$("#msg").html("修改失败");
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


<script>
    $(document).ready(function () {
        $("#mail-update").click(function () {
            $.ajax({
                type: "POST",
                url: "mail",
                dataType: "json",
                data: {
                    mail: $("#mail").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#ajax-mail").html($("#mail").val()=="1"?"发送":"不发送");
						$("#msg").html(data.msg);
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>

<script>
    $(document).ready(function () {
        $("#theme-update").click(function () {
            $.ajax({
                type: "POST",
                url: "theme",
                dataType: "json",
                data: {
                    theme: $("#theme").val()
                },
                success: function (data) {
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html(data.msg);
						window.setTimeout("location.href='/user/edit'", {$config['jump_delay']});
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>



<script>
    $(document).ready(function () {
        $("#method-update").click(function () {
            $.ajax({
                type: "POST",
                url: "method",
                dataType: "json",
                data: {
                    method: $("#method").val()
                },
                success: function (data) {
					$("#ajax-user-method").html($("#method").val());
                    if (data.ret) {
                        $("#result").modal();
						$("#msg").html("修改成功");
                    } else {
                        $("#result").modal();
						$("#msg").html(data.msg);
                    }
                },
                error: function (jqXHR) {
                    $("#result").modal();
					$("#msg").html(data.msg+"     出现了一些错误。");
                }
            })
        })
    })
</script>


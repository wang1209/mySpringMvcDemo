<%--
  Created by IntelliJ IDEA.
  User: WY
  Date: 2015/4/9
  Time: 11:17
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="zh-cn">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1">

  <link href="public/ico/favicon.ico" rel="shortcut icon" type="image/x-icon">
  <!-- END PAGE LEVEL SCRIPTS -->
<%--  <%@ include file="../shared/taglib.jsp"%>
  <%@ include file="../shared/importJs.jsp"%>
  <%@ include file="../shared/importCss.jsp"%>--%>
  <title>
    登录范例
  </title>
  <link rel="stylesheet" href="/resources/css/code-guide.css">
</head>
<body>

<header class="masthead">
  <div class="container">
    <span class="icon">✍</span>
    <h1>登录范例 by @wy</h1>
    <p class="lead">编写灵活、稳定、高质量的 HTML 和 CSS 代码。</p>

    <p class="masthead-links">
      <a href="https://github.com/mdo/code-guide">
        <span class="icon icon-github-circled"></span>
      </a>
      <a href="https://www.apple.com">
        <span class="icon icon-apple"></span>
      </a>
    </p>
  </div>
</header>

<sf:form method="post" modelAttribute="">
  <fieldset>
    <table cellspacing="0">
      <tr>
        <th><label for="user_full_name">名称</label></th>
        <td><sf:input path="fullName" size="15" id="user_full_name"/></td>
      </tr>
      <tr>
        <th><label for="user_screen_name">名称</label></th>
        <td><sf:input path="username" size="15" maxlength="15" id="user_screen_name"/><small id="username_msg">no space</small> </td>
      </tr>
    </table>
  </fieldset>
</sf:form>
<div class="heading" id="toc">
  <h2>目录</h2>
</div>
<div class="section toc">
  <div class="col">
    <h4><a href="#html">HTML</a></h4>
    <ul>
      <li><a href="#html-syntax">语法</a></li>
      <li><a href="#html-doctype">HTML5 doctype</a></li>
      <li><a href="#html-lang">语言属性（Language attribute）</a></li>
      <li><a href="#html-encoding">字符编码</a></li>
      <li><a href="#html-ie-compatibility-mode">IE 兼容模式</a></li>
      <li><a href="#html-style-script">引入 CSS 和 JavaScript 文件</a></li>
      <li><a href="#html-practicality">实用为王</a></li>
      <li><a href="#html-attribute-order">属性顺序</a></li>
      <li><a href="#html-boolean-attributes">布尔（boolean）型属性</a></li>
      <li><a href="#html-reducing-markup">减少标签的数量</a></li>
      <li><a href="#html-javascript">JavaScript 生成的标签</a></li>
    </ul>
  </div>
  <div class="col">
    <h4><a href="#css">CSS</a></h4>
    <ul>
      <li><a href="#css-syntax">语法</a></li>
      <li><a href="#css-declaration-order">声明顺序</a></li>
      <li><a href="#css-media-queries">媒体查询（Media query）的位置</a></li>
      <li><a href="#css-prefixed-properties">带前缀的属性</a></li>
      <li><a href="#css-single-declarations">单行规则声明</a></li>
      <li><a href="#css-shorthand">简写形式的属性声明</a></li>
      <li><a href="#css-nesting">Less 和 Sass 中的嵌套</a></li>
      <li><a href="#css-comments">注释</a></li>
      <li><a href="#css-classes">class 命名</a></li>
      <li><a href="#css-selectors">选择器</a></li>
      <li><a href="#css-organization">代码组织</a></li>
    </ul>
  </div>
</div>


<div class="section" id="golden-rule">
  <div class="col">
    <h2>黄金定律</h2>
    <p>永远遵循同一套编码规范 -- 可以是这里列出的，也可以是你自己总结的。如果你发现本规范中有任何错误，敬请指正。通过 <a href="https://github.com/mdo/code-guide/issues/new">open an issue on GitHub</a>为本规范添加或贡献内容。</p>
  </div>
  <div class="col">
    <blockquote>
      <p>不管有多少人共同参与同一项目，一定要确保每一行代码都像是同一个人编写的。</p>
    </blockquote>
  </div>
</div>
<%--<div class="content">
  <!-- BEGIN LOGIN FORM -->
  <form:form modelAttribute="contentModel" class="login-form" method="POST">
    <h3 class="form-title">账户登录</h3>
    <!-- <div class="alert alert-error hide">
    <button class="close" data-dismiss="alert"></button>
    <span>请输入用户名和密码.</span>
    </div> -->
    <div class="form-group">
      <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
      <label class="control-label visible-ie8 visible-ie9">用户名</label>
      <div class="input-icon">
        <i class="icon-user"></i>
        <form:input path="username" class="form-control placeholder-no-fix" autocomplete="off" placeholder="用户名"/><br/>
        <form:errors path="username" class="field-has-error"></form:errors>
      </div>
    </div>
    <div class="form-group">
      <label class="control-label visible-ie8 visible-ie9">密码</label>
      <div class="input-icon">
        <i class="icon-lock"></i>
        <form:password path="password" class="form-control placeholder-no-fix" autocomplete="off" placeholder="密码"/><br/>
        <form:errors path="password" class="field-has-error"></form:errors>
      </div>
    </div>
    <div class="form-actions">
      <label class="checkbox">
        <input type="checkbox" name="remember" value="1"/> 记住我</label>
      <button type="submit" class="btn btn-info pull-right">登录</button>
    </div>
    <div class="forget-password">
      <h4>忘记密码？</h4>
      <p>
        别担心，点击 <a href="javascript:;"  id="forget-password">这里</a>
        罿置密码。
      </p>
    </div>
    <div class="create-account">
      <p>
        还没有账户 ?&nbsp;
        <a href="<c:url value='/account/register'/>" id="register-btn" >注册新账户</a>
      </p>
    </div>
  </form:form>
  <!-- END LOGIN FORM -->
</div>--%>

</body></html>

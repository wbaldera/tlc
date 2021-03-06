<%--
 ~  Copyright 2010 Wholly Grails.
 ~
 ~  This file is part of the Three Ledger Core (TLC) software
 ~  from Wholly Grails.
 ~
 ~  TLC is free software: you can redistribute it and/or modify
 ~  it under the terms of the GNU General Public License as published by
 ~  the Free Software Foundation, either version 3 of the License, or
 ~  (at your option) any later version.
 ~
 ~  TLC is distributed in the hope that it will be useful,
 ~  but WITHOUT ANY WARRANTY; without even the implied warranty of
 ~  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 ~  GNU General Public License for more details.
 ~
 ~  You should have received a copy of the GNU General Public License
 ~  along with TLC.  If not, see <http://www.gnu.org/licenses/>.
 --%>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="bodyClass" content="company"/>
    <title><g:msg code="systemRole.edits" default="Edit Roles"/></title>
</head>
<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="home" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
    <span class="menuButton"><g:link class="list" action="display"><g:msg code="systemRole.list" default="Role List"/></g:link></span>
</div>
<div class="body">
    <g:pageTitle code="systemRole.edits.for" args="${[ddSource.user.name]}" default="Edit Roles for User ${ddSource.user.name}"/>
    <g:if test="${flash.message}">
        <div class="message"><g:msg code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
    </g:if>
    <g:form action="adjust" method="post">
        <p>&nbsp;</p>
        <p><g:msg code="generic.multi.select" default="Use Ctrl-click to add or remove selections. Shift-click will add or remove ranges of selections. A mouse click on its own will select just the clicked item, deselecting all others. If you make a mistake, use the Reset button at the bottom of the page to reset the list to its original state."/></p>
        <p>&nbsp;</p>
        <div style="margin-left:30px;">
            <g:domainSelect name="linkages" options="${allRoles}" selected="${userRoles}" prefix="role.name" code="code" default="name" size="30"/>
        </div>
        <div class="buttons">
            <span class="button"><input class="save" type="submit" value="${msg(code: 'generic.save', 'default': 'Save')}"/></span>
            <span class="button"><input class="reset" type="reset" value="${msg(code: 'generic.reset', 'default': 'Reset')}"/></span>
        </div>
    </g:form>
</div>
</body>
</html>

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
<%@ page import="com.whollygrails.tlc.sys.SystemCountry" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta name="bodyClass" content="system"/>
    <title><g:msg code="systemCountry.show" default="Show System Country"/></title>
</head>
<body>
<div class="nav">
    <span class="menuButton"><a class="home" href="${createLink(uri: '/')}"><g:msg code="home" default="Home"/></a></span>
    <span class="menuButton"><g:link class="menu" controller="systemMenu" action="display"><g:msg code="systemMenu.display" default="Menu"/></g:link></span>
    <span class="menuButton"><g:link class="list" action="list"><g:msg code="systemCountry.list" default="System Country List"/></g:link></span>
    <span class="menuButton"><g:link class="create" action="create"><g:msg code="systemCountry.new" default="New System Country"/></g:link></span>
</div>
<div class="body">
    <g:pageTitle code="systemCountry.show" default="Show System Country"/>
    <g:if test="${flash.message}">
        <div class="message"><g:msg code="${flash.message}" args="${flash.args}" default="${flash.defaultMessage}"/></div>
    </g:if>
    <div class="dialog">
        <table>
            <tbody>

            <g:permit activity="sysadmin">
                <tr class="prop">
                    <td valign="top" class="name"><g:msg code="generic.id" default="Id"/>:</td>

                    <td valign="top" class="value">${display(bean: systemCountryInstance, field: 'id')}</td>

                </tr>
            </g:permit>

            <tr class="prop">
                <td valign="top" class="name"><g:msg code="systemCountry.code" default="Code"/>:</td>

                <td valign="top" class="value">${display(bean: systemCountryInstance, field: 'code')}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:msg code="systemCountry.name" default="Name"/>:</td>

                <td valign="top" class="value"><g:msg code="country.name.${systemCountryInstance.code}" default="${systemCountryInstance.name}"/></td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:msg code="systemCountry.flag" default="Flag"/>:</td>

                <td valign="top" class="value">${display(bean: systemCountryInstance, field: 'flag')}</td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:msg code="systemCountry.currency" default="Currency"/>:</td>

                <td valign="top" class="value"><g:msg code="currency.name.${systemCountryInstance.currency.code}" default="${systemCountryInstance.currency.name}"/></td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:msg code="systemCountry.language" default="Language"/>:</td>

                <td valign="top" class="value"><g:msg code="language.name.${systemCountryInstance.language.code}" default="${systemCountryInstance.language.name}"/></td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:msg code="systemCountry.region" default="Region"/>:</td>

                <td valign="top" class="value"><g:msg code="region.name.${systemCountryInstance.region.code}" default="${systemCountryInstance.region.name}"/></td>

            </tr>

            <tr class="prop">
                <td valign="top" class="name"><g:msg code="systemCountry.addressFormat" default="Address Format"/>:</td>

                <td valign="top" class="value"><g:msg code="systemAddressFormat.name.${systemCountryInstance.addressFormat.code}" default="${systemCountryInstance.addressFormat.name}"/></td>

            </tr>

            <g:permit activity="sysadmin">
                <tr class="prop">
                    <td valign="top" class="name"><g:msg code="generic.securityCode" default="Security Code"/>:</td>

                    <td valign="top" class="value">${display(bean: systemCountryInstance, field: 'securityCode')}</td>

                </tr>


                <tr class="prop">
                    <td valign="top" class="name"><g:msg code="generic.dateCreated" default="Date Created"/>:</td>

                    <td valign="top" class="value">${display(bean: systemCountryInstance, field: 'dateCreated')}</td>

                </tr>


                <tr class="prop">
                    <td valign="top" class="name"><g:msg code="generic.lastUpdated" default="Last Updated"/>:</td>

                    <td valign="top" class="value">${display(bean: systemCountryInstance, field: 'lastUpdated')}</td>

                </tr>


                <tr class="prop">
                    <td valign="top" class="name"><g:msg code="generic.version" default="Version"/>:</td>

                    <td valign="top" class="value">${display(bean: systemCountryInstance, field: 'version')}</td>

                </tr>
            </g:permit>

            </tbody>
        </table>
    </div>
    <div class="buttons">
        <g:form>
            <input type="hidden" name="id" value="${systemCountryInstance?.id}"/>
            <span class="button"><g:actionSubmit class="edit" action="Edit" value="${msg(code:'edit', 'default':'Edit')}"/></span>
            <span class="button"><g:actionSubmit class="delete" onclick="return confirm('${msg(code:'delete.confirm', 'default':'Are you sure?')}');" action="Delete" value="${msg(code:'delete', 'default':'Delete')}"/></span>
        </g:form>
    </div>
</div>
</body>
</html>
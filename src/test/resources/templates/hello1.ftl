<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title></title>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <style type="text/css">
        .center {
            text-align: center;
            width: 100%;
        }

        .title {
            text-align: center;
            width: 100%;
            background-color: lavenderblush;
        }

        .subtitle {
            font-size: 10px;
            text-align: right;
        }

        img {
            border-radius: 10px;
        }

        .div-b {
            width: 100px;
            height: 70px;
            float: left;
            display: inline-block;
            border-radius: 15px;
        }

        .div-c {
            width: 20px;
            float: left;
            display: inline-block;
        }

        table {
            repeat-header: yes;
            repeat-footer: yes;
            width: 100%;
            border: 0;
            border-collapse: collapse;
        }

        .data-tr-color {
            font-size: 10px;
            font-weight: bold;
            height: 18px;
            line-height: 30px;
            color: black;
            text-align: center;
            background-color: #d6f2f1
        }

        .data-tr-color-v2 {
            font-size: 10px;
            font-weight: bold;
            height: 18px;
            line-height: 30px;
            color: black;
            text-align: center;
            background-color: #EBF5EC
        }

        .data-tr-nocolor {
            font-size: 10px;
            font-weight: bold;
            height: 18px;
            line-height: 30px;
            color: black;
            text-align: center;
        }

        .data-tr-color-small {
            font-size: 9px;
            height: 17px;
            line-height: 30px;
            color: grey;
            text-align: center;
            background-color: #d6f2f1
        }

        .data-tr-color-small-v2 {
            font-size: 9px;
            height: 17px;
            line-height: 30px;
            color: grey;
            text-align: center;
            background-color: #EBF5EC
        }

        .data-tr-nocolor-small {
            font-size: 9px;
            height: 17px;
            line-height: 30px;
            color: grey;
            text-align: center;
        }
    </style>
</head>
<body>
<!--第一页开始-->
<#list contentPage as page>
    <div class="page">
        <!-- 标题 -->
        <div class="title">
            <p>${page.templateName}</p>
        </div>
        <div>
            <p class="subtitle">${page.freeMarkerUrl}</p>
        </div>

        <!--图片栏目-->
        <div class="center">
            <div style=" width:110px; float: left; display: inline-block;"></div>
            <#list page.picUrlList as item>
                <div class="div-b">
                    <img src="${item}"/>
                </div>
                <div class="div-c"></div>
            </#list>
        </div>
        <!-- 描述栏 -->
        <div>
            <div style=" width:110px; float: left; display: inline-block;"></div>
            <#list page.descList as item>
                <div style="display: inline-block; float: left; width: 100px; border: 100px">
                    <p style="font-size: 9px; text-align: right">
                        ${item}
                    </p>
                </div>
                <div class="div-c"></div>
            </#list>
        </div>

        <!-- 数据表格栏 -->
        <table>
            <tbody>
            <tr class="data-tr-color">
                <td style="width: 130px; text-align: left">Offer Price</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="width: 130px; text-align: left">Rehab Costs</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color">
                <td style="width: 130px; text-align: left">Estimated Monthly Rent</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="width: 130px; text-align: left">Yearly Expense</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left; ">&nbsp;&nbsp;&nbsp;Property Tax</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left; text-indent: -5px">&nbsp;&nbsp;&nbsp;Management Fees</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;HOA</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Insurance</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Maintenance</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Listing Fees</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Vacancy Expense</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left;">&nbsp;&nbsp;&nbsp;Capex Reserve
                    Contribution
                </td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color">
                <td style="width: 130px; text-align: left">Net Operating Income</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="width: 130px; text-align: left;">Cap Rate</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            </tbody>
        </table>

        <div style="height: 30px"></div>

        <table>
            <tbody>
            <tr class="data-tr-color-v2">
                <td style="width: 130px; text-align: left">Household Income</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="text-align: left">Ethnicity</td>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Asian</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Black</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Hispanic</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;White</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-v2">
                <td style="width: 150px; text-align: left">5-Year Population Growth</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="text-align: left">Educational Attainment</td>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Bachelor’s and Above</td>
                <#list page.offerPrice as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            </tbody>
        </table>
    </div>
    <!--第一页结束-->
    <span style="page-break-after:always;"></span>
</#list>

</body>
</html>
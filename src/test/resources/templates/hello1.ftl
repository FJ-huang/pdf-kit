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
            <p>${page.title}</p>
        </div>
        <div>
            <p class="subtitle">${page.subTitle}</p>
        </div>

        <!--图片栏目-->
        <div class="center">
            <div style=" width:110px; float: left; display: inline-block;"></div>
            <#list page.picUrl as item>
                <div class="div-b">
                    <img src="${item}"/>
                </div>
                <div class="div-c"></div>
            </#list>
        </div>
        <!-- 描述栏 -->
        <div>
            <div style=" width:110px; float: left; display: inline-block;"></div>
            <#list page.desc as item>
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
                <#list page.rehabCosts as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color">
                <td style="width: 130px; text-align: left">Estimated Monthly Rent</td>
                <#list page.estimatedMonthlyRent as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="width: 130px; text-align: left">Yearly Expense</td>
                <#list page.yearlyExpense as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left; ">&nbsp;&nbsp;&nbsp;Property Tax</td>
                <#list page.propertyTax as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left; text-indent: -5px">&nbsp;&nbsp;&nbsp;Management Fees</td>
                <#list page.managementFees as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;HOA</td>
                <#list page.hoa as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Insurance</td>
                <#list page.insurance as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Maintenance</td>
                <#list page.maintenance as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Listing Fees</td>
                <#list page.listingFees as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Vacancy Expense</td>
                <#list page.vacancyExpense as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left;">&nbsp;&nbsp;&nbsp;Capex Reserve
                    Contribution
                </td>
                <#list page.capexReserveContribution as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color">
                <td style="width: 130px; text-align: left">Net Operating Income</td>
                <#list page.netOperatingIncome as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="width: 130px; text-align: left;">Cap Rate</td>
                <#list page.capRate as item>
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
                <#list page.income as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="text-align: left">Ethnicity</td>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Asian</td>
                <#list page.asian as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Black</td>
                <#list page.black as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Hispanic</td>
                <#list page.hispanic as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;White</td>
                <#list page.white as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-color-v2">
                <td style="width: 150px; text-align: left">5-Year Population Growth</td>
                <#list page.pop5yr as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td style="text-align: left">Educational Attainment</td>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Bachelor’s and Above</td>
                <#list page.bachelor as item>
                    <td style="width: 120px;">${item}</td>
                </#list>
            </tr>
            </tbody>
        </table>
    </div>
    <span style="page-break-after:always;"></span>
    <!--第一页结束-->

    <!-- 第二页开始 -->
    <!-- 标题 -->
    <div class="title">
        <p>${page.title}</p>
    </div>
    <div>
        <p class="subtitle">${page.subTitle}</p>
    </div>

    <!--图片栏目-->
    <div class="center">
        <div style=" width:110px; float: left; display: inline-block;"></div>
        <#list page.picUrl as item>
            <div class="div-b">
                <img src="${item}"/>
            </div>
            <div class="div-c"></div>
        </#list>
    </div>
    <!-- 描述栏 -->
    <div>
        <div style=" width:110px; float: left; display: inline-block;"></div>
        <#list page.desc as item>
            <div style="display: inline-block; float: left; width: 100px; border: 100px">
                <p style="font-size: 9px; text-align: right">
                    ${item}
                </p>
            </div>
            <div class="div-c"></div>
        </#list>
    </div>
    <table>
        <tbody>
        <tr class="data-tr-color">
            <td style="width: 130px; text-align: left">Overall Score</td>
            <#list page.overallScore as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor">
            <td style="width: 130px; text-align: left">Demand</td>
            <#list page.demand as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>

        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left; ">&nbsp;&nbsp;&nbsp;WalkAbility</td>
            <#list page.walk as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left; text-indent: -5px">&nbsp;&nbsp;&nbsp;Retail</td>
            <#list page.retail as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Jobs - Current</td>
            <#list page.current_ as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Jobs-Future</td>
            <#list page.future as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;School (Avg.)</td>
            <#list page.schoolAvg as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Elementary School</td>
            <#list page.elememt as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Middle School</td>
            <#list page.middle as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;High School</td>
            <#list page.high as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>

        <tr class="data-tr-color">
            <td style="width: 130px; text-align: left">Supply</td>
            <#list page.supply as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Short-Term</td>
            <#list page.short_ as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Mid-Term</td>
            <#list page.mid as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Long-Term</td>
            <#list page.long_ as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>

        <tr class="data-tr-color">
            <td style="width: 130px; text-align: left">Performance</td>
            <#list page.performance as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Cap Rate</td>
            <#list page.blockPortCapRate as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Annual Appreciation</td>
            <#list page.apprecia as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;5-year Total Return</td>
            <#list page.return_ as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>


        <tr class="data-tr-color">
            <td style="width: 130px; text-align: left">Risk</td>
            <#list page.risk as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Neighborhood Changee</td>
            <#list page.neighbor as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Market Stability</td>
            <#list page.pricev as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Crime</td>
            <#list page.crime as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Economic Stress</td>
            <#list page.stress as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Voting Patterns</td>
            <#list page.vote as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-color-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Growth Trend</td>
            <#list page.growth as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        <tr class="data-tr-nocolor-small">
            <td style="width: 130px; text-align: left">&nbsp;&nbsp;&nbsp;Loss Risk</td>
            <#list page.loss as item>
                <td style="width: 120px;">${item}</td>
            </#list>
        </tr>
        </tbody>
    </table>
    <span style="page-break-after:always;"></span>
</#list>

</body>
</html>
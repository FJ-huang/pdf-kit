<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"  "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <title></title>
    <meta http-equiv="Content-Style-Type" content="text/css"/>
    <style type="text/css">
        .title {
            text-align: center;
            vertical-align: center;
            width: 100%;
            height: 46px;
            background: #F5F5F5;
        }

        .title-p {
            font-size: 14px;
            font-family: IBMPlexSerif-Bold, IBMPlexSerif;
            font-weight: bold;
            color: rgba(0, 0, 0, 1);
        }

        .subtitle {
            font-size: 10px;
            font-family: IBMPlexSans;
            color: rgba(0, 0, 0, 1);
            text-align: center;
        }

        .desc-td {
            font-family: IBMPlexSans;
            font-size: 10px;
            text-align: right;
            line-height: 3px;
        }

        .img-td {
            display: inline-block;
            float: right;
            font-size: 12px;
            font-weight: bold;
            letter-spacing: 7px;
            font-family: IBMPlexSans-ExtraLightItalic;
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
            color: black;
            text-align: center;
            background-color: #EBF9FF
        }

        .data-tr-color-v2 {
            font-size: 10px;
            font-weight: bold;
            color: black;
            text-align: center;
            background-color: #EBF5EC
        }

        .data-tr-nocolor {
            font-size: 10px;
            font-weight: bold;
            color: black;
            text-align: center;
        }

        .data-tr-color-small {
            text-align: left;
            background-color: #EBF9FF;

            font-size: 10px;
            font-family: IBMPlexSans;
            color: rgba(0, 0, 0, 1);
        }

        .data-tr-color-small-v2 {
            text-align: left;
            background-color: #EBF5EC;
            font-size: 10px;
            font-family: IBMPlexSans;
            color: rgba(0, 0, 0, 1);
        }

        .data-tr-nocolor-small {
            text-align: left;
            font-size: 10px;
            font-family: IBMPlexSans;
            color: rgba(0, 0, 0, 1);
        }

        .item-td {
            width: 124px;
            height: 18px;
            text-align: right;
        }

        .head-td {
            width: 140px;
            text-align: left;
            font-size: 10px;
            font-family: IBMPlexSans-Medium, IBMPlexSans;
            font-weight: bolder;
            color: rgba(0, 0, 0, 1);
        }
    </style>
</head>
<body>
<#list contentPage as page>
    <div class="page">
        <!--第一页开始-->
        <!-- 标题 -->
        <div class="title">
            <p class="title-p">${page.title}</p>
        </div>
        <div>
            <p class="subtitle">${page.subTitle}</p>
        </div>

        <!-- 数据表格栏 -->

        <table>
            <!--图片栏-->
            <tr>
                <td class="head-td"></td>
                <#list page.picUrl as item>
                    <td class="img-td">
                        <div>
                            <img width="135px" height="80px" src="${item}"/>
                        </div>
                    </td>
                </#list>
            </tr>
            <tr>
                <!-- 描述栏 -->
                <td class="head-td"></td>
                <#list page.desc as item>
                    <td class="item-td">
                        <div style="display: inline-block; float: right; width: 100px;">
                            <p class="desc-td">
                                ${item}
                            </p>
                        </div>
                    </td>
                </#list>
            </tr>
        </table>
<#--        <p style="width:15px;height:110px;font-size:12px;font-family:IBMPlexSerif-Bold;font-weight:bold;color:rgba(0,0,0,1);line-height:15px;letter-spacing: 2px;">Block Data</p>-->
        <table>
            <tbody>
            <div style="height:252px; display: inline-block; float: left; background-color: #EBF9FF;">
                <img width="12px" height="135px" src="/Users/hyp/Desktop/1.jpg" alt=""/>
            </div>
            <div style="height:252px; width:6px; display: inline-block; float: left; background-color: white;">
            </div>
            <tr class="data-tr-color">
                <td class="head-td">Offer Price</td>
                <#list page.offerPrice as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td class="head-td">Rehab Costs</td>
                <#list page.rehabCosts as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color">
                <td class="head-td">Estimated Monthly Rent</td>
                <#list page.estimatedMonthlyRent as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td class="head-td">Yearly Expense</td>
                <#list page.yearlyExpense as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Property Tax</td>
                <#list page.propertyTax as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Management Fees</td>
                <#list page.managementFees as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;HOA</td>
                <#list page.hoa as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Insurance</td>
                <#list page.insurance as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Maintenance</td>
                <#list page.maintenance as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Listing Fees</td>
                <#list page.listingFees as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Vacancy Expense</td>
                <#list page.vacancyExpense as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Capex Reserve
                    Contribution
                </td>
                <#list page.capexReserveContribution as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color">
                <td class="head-td">Net Operating Income</td>
                <#list page.netOperatingIncome as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td class="head-td">Cap Rate</td>
                <#list page.capRate as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            </tbody>
        </table>

        <div style="height: 13px;"></div>

        <table>
            <tbody>
            <div style="height:152px; width: 12px display: inline-block; float: left; background-color: #EBF5EC;">
            </div>
            <div style="height:152px; width:6px; display: inline-block; float: left; background-color: white;">
            </div>
            <tr class="data-tr-color-v2">
                <td class="head-td">Household Income</td>
                <#list page.income as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td class="head-td">Ethnicity</td>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td>&nbsp;&nbsp;&nbsp;Asian</td>
                <#list page.asian as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Black</td>
                <#list page.black as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td>&nbsp;&nbsp;&nbsp;Hispanic</td>
                <#list page.hispanic as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;White</td>
                <#list page.white as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-v2">
                <td class="head-td">5-Year Population Growth</td>
                <#list page.pop5yr as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td class="head-td">Educational Attainment</td>
            </tr>
            <tr class="data-tr-color-small-v2">
                <td>&nbsp;&nbsp;&nbsp;Bachelor’s and Above</td>
                <#list page.bachelor as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            </tbody>
        </table>
    </div>
    <span style="page-break-after:always;"></span>
    <!--第一页结束-->

    <!-- 第二页开始 -->
    <!-- 标题 -->
    <div class="page">
        <div class="title">
            <p class="title-p">${page.title}</p>
        </div>
        <div>
            <p class="subtitle">${page.subTitle}</p>
        </div>

        <table>
            <!--图片栏-->
            <tr>
                <td class="head-td"></td>
                <#list page.picUrl as item>
                    <td class="img-td">
                        <div>
                            <img width="135px" height="80px" src="${item}"/>
                        </div>
                    </td>
                </#list>
            </tr>
            <tr>
                <!-- 描述栏 -->
                <td class="head-td"></td>
                <#list page.desc as item>
                    <td class="item-td">
                        <div style="display: inline-block; float: right; width: 100px;">
                            <p class="desc-td">
                                ${item}
                            </p>
                        </div>
                    </td>
                </#list>
            </tr>
        </table>
        <table>
            <tbody>
            <div style="height:468px; width: 15px; display: inline-block; float: left; background-color: #EBF9FF;">
                <img width="10px" height="90px" src="/Users/hyp/Desktop/2.jpg" alt=""/>
            </div>
            <tr class="data-tr-color">
                <td class="head-td">Overall Score</td>
                <#list page.overallScore as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor">
                <td class="head-td">Demand</td>
                <#list page.demand as item>
                    <td class="item-td">
                        <img style="vertical-align: center;" width="60px" ; height="10px" ;
                             src="/Users/hyp/Desktop/score.jpg"/>
                        &nbsp;&nbsp;${item}&nbsp;&nbsp;
                    </td>
                </#list>
            </tr>

            <tr class="data-tr-color-small">
                <td style="width: 130px; text-align: left; ">&nbsp;&nbsp;&nbsp;WalkAbility</td>
                <#list page.walk as item>
                    <td class="item-td">
                        <img style="vertical-align: center;" width="10px" ; height="10px" ;
                             src="/Users/hyp/Desktop/go.jpg"/>
                        &nbsp;&nbsp;${item}&nbsp;&nbsp;
                    </td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td style="width: 130px; text-align: left; text-indent: -5px">&nbsp;&nbsp;&nbsp;Retail</td>
                <#list page.retail as item>
                    <td class="item-td">
                        <img style="vertical-align: center;" width="10px" ; height="10px" ;
                             src="/Users/hyp/Desktop/go.jpg"/>
                        &nbsp;&nbsp;${item}&nbsp;&nbsp;
                    </td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td class="head-td">&nbsp;&nbsp;&nbsp;Jobs - Current</td>
                <#list page.current_ as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Jobs-Future</td>
                <#list page.future as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;School (Avg.)</td>
                <#list page.schoolAvg as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Elementary School</td>
                <#list page.elememt as item>
                    <td class="item-td">
                        <img width="10px" ; height="10px" ; src="/Users/hyp/Desktop/green.jpg"/>
                        &nbsp;&nbsp;${item}&nbsp;&nbsp;
                    </td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Middle School</td>
                <#list page.middle as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;High School</td>
                <#list page.high as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>

            <tr class="data-tr-color">
                <td class="head-td">Supply</td>
                <#list page.supply as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Short-Term</td>
                <#list page.short_ as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Mid-Term</td>
                <#list page.mid as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Long-Term</td>
                <#list page.long_ as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>

            <tr class="data-tr-color">
                <td class="head-td">Performance</td>
                <#list page.performance as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Cap Rate</td>
                <#list page.blockPortCapRate as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Annual Appreciation</td>
                <#list page.apprecia as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;5-year Total Return</td>
                <#list page.return_ as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>


            <tr class="data-tr-color">
                <td class="head-td">Risk</td>
                <#list page.risk as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Neighborhood Changee</td>
                <#list page.neighbor as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Market Stability</td>
                <#list page.pricev as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Crime</td>
                <#list page.crime as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Economic Stress</td>
                <#list page.stress as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Voting Patterns</td>
                <#list page.vote as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-color-small">
                <td>&nbsp;&nbsp;&nbsp;Growth Trend</td>
                <#list page.growth as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            <tr class="data-tr-nocolor-small">
                <td>&nbsp;&nbsp;&nbsp;Loss Risk</td>
                <#list page.loss as item>
                    <td class="item-td">${item}&nbsp;&nbsp;</td>
                </#list>
            </tr>
            </tbody>
        </table>
    </div>
    <span style="page-break-after:always;"></span>
</#list>

</body>
</html>
package pdf.kit.component.dto;

import lombok.Data;

import java.util.Date;

/**
 * @Author: tangshijun
 * @Desc: 估价
 * @Date: 3:27 下午 2020/5/22
 */
@Data
public class Estimate {

    private Long id;

    private String userId;

    //Rent
    private Double estimatedMonthlyRent;

    //Rehab_cost
    private Double rehabCosts;


    //InsurancePct
    private Double insurancePct;

    private Double insurance;

    //HOAEstimate
    private Double hoa;

    //tax
    private Double tax;

    //tax
    private Double propertyTax;

    private Double offerPrice;

    private Double yearlyExpense;

    private Double managementFees;

    private Double maintenance;

    private Double listingFees;

    private Double vacancyExpense;

    private Double capexReserveContribution;

    private Double netOperatingIncome;

    private Double capRate;

    private Opportunity opportunity;

    private Date createTime;

    private Date updateTime;
}

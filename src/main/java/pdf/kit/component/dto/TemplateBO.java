package pdf.kit.component.dto;

import lombok.Data;

import java.util.List;

/**
 * @Author hyp
 * @Date 2020/6/28 3:00 下午
 * @Description TODO
 */
@Data
public class TemplateBO {

    private String title;
    private String subTitle;
    private List<String> picUrl;
    private List<String> unparsedAddress;
    private List<String> countyOrParish;
    private List<String> stateOrProvince;
    private List<String> postalCode;
    private List<String> listPrice;
    private List<String> bathroomsFull;
    private List<String> bedroomsTotal;
    private List<String> livingArea;
    private List<String> desc;

    // page 1
    private List<String> offerPrice;
    private List<String> rehabCosts;
    private List<String> estimatedMonthlyRent;
    private List<String> yearlyExpense;
    private List<String> propertyTax;
    private List<String> managementFees;
    private List<String> hoa;
    private List<String> insurance;
    private List<String> maintenance;
    private List<String> listingFees;
    private List<String> vacancyExpense;
    private List<String> capexReserveContribution;
    private List<String> netOperatingIncome;
    private List<String> capRate;
    private List<String> income;
    private List<String> asian;
    private List<String> black;
    private List<String> hispanic;
    private List<String> white;
    private List<String> pop5yr;
    private List<String> bachelor;

    // page 2
    // todo 无此对应字段
    private List<String> overallScore;

    private List<String> demand;

    private List<String> walk;

    private List<String> retail;

    private List<String> current_;

    private List<String> future;

    // todo 无此对应字段
    private List<String> schoolAvg;

    private List<String> elememt;

    private List<String> middle;

    private List<String> high;

    // todo 无此对应字段
    private List<String> supply;

    private List<String> short_;

    private List<String> mid;

    private List<String> long_;

    // todo 无此对应字段
    private List<String> performance;

    private List<String> BlockPortCapRate;

    private List<String> apprecia;

    private List<String> return_;

    private List<String> risk;

    private List<String> neighbor;

    private List<String> pricev;

    private List<String> crime;

    private List<String> stress;

    private List<String> vote;

    private List<String> growth;

    private List<String> loss;
}

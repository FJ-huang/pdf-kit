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
    private List<String> offerPrice;
    private List<String> rehabCosts;
    private List<String> estimatedMonthlyRent;
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
    
}

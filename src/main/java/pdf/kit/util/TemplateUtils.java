package pdf.kit.util;

import com.alibaba.fastjson.JSONObject;
import pdf.kit.component.dto.ListHubJsonDetailPlus;
import pdf.kit.component.dto.TemplateBO;
import pdf.kit.component.dto.TemplatePage;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author hyp
 * @Date 2020/6/28 3:31 下午
 * @Description TODO
 */
public class TemplateUtils {
    public static TemplateBO jsonToBean(List<ListHubJsonDetailPlus> data, TemplateBO templateBO) {
         List<String> picUrl = new ArrayList<String>();
        List<String> unparsedAddress = new ArrayList<String>();
        List<String> countyOrParish = new ArrayList<String>();
        List<String> stateOrProvince = new ArrayList<String>();
        List<String> postalCode = new ArrayList<String>();
        List<String> listPrice = new ArrayList<String>();
        List<String> bathroomsFull = new ArrayList<String>();
        List<String> bedroomsTotal = new ArrayList<String>();
        List<String> livingArea = new ArrayList<String>();
        List<String> offerPrice = new ArrayList<String>();
        List<String> rehabCosts = new ArrayList<String>();
        List<String> estimatedMonthlyRent = new ArrayList<String>();
        List<String> propertyTax = new ArrayList<String>();
        List<String> managementFees = new ArrayList<String>();
        List<String> hoa = new ArrayList<String>();
        List<String> insurance = new ArrayList<String>();
        List<String> maintenance = new ArrayList<String>();
        List<String> listingFees = new ArrayList<String>();
        List<String> vacancyExpense = new ArrayList<String>();
        List<String> capexReserveContribution = new ArrayList<String>();
        List<String> netOperatingIncome = new ArrayList<String>();
        List<String> capRate = new ArrayList<String>();
        List<String> income = new ArrayList<String>();
        List<String> asian = new ArrayList<String>();
        List<String> black = new ArrayList<String>();
        List<String> hispanic = new ArrayList<String>();
        List<String> white = new ArrayList<String>();
        List<String> pop5yr = new ArrayList<String>();
        List<String> bachelor = new ArrayList<String>();
        List<String> desc = new ArrayList<String>();

        for (ListHubJsonDetailPlus item : data) {
            picUrl.add(getValue(item.getMedia().get(0).getMediaURL()));

            unparsedAddress.add(getValue(item.getUnparsedAddress()));
            countyOrParish.add(getValue(item.getCountyOrParish()));
            stateOrProvince.add(getValue(item.getStateOrProvince()));
            postalCode.add(getValue(item.getPostalCode()));
            listPrice.add(getValue(item.getListPrice()));
            bathroomsFull.add(getValue(item.getBathroomsFull()));
            bedroomsTotal.add(getValue(item.getBedroomsTotal()));
            livingArea.add(getValue(item.getLivingArea()));
            desc.add(getValue(item.getUnparsedAddress()) + getValue(item.getCountyOrParish() + "," + getValue(item.getStateOrProvince()) + " " + getValue(item.getPostalCode()) + getValue(item.getListPrice()) + getValue(item.getBathroomsFull()) + "bd | " + getValue(item.getBedroomsTotal()) +"ba | " + getValue(item.getLivingArea()) + "Sq ft"));

            offerPrice.add(getValue(item.getOpportunity().getEstimate().getOfferPrice()));
            rehabCosts.add(getValue(item.getOpportunity().getEstimate().getRehabCosts()));
            estimatedMonthlyRent.add(getValue(item.getOpportunity().getEstimate().getEstimatedMonthlyRent()));
            propertyTax.add(getValue(item.getOpportunity().getEstimate().getPropertyTax()));
            managementFees.add(getValue(item.getOpportunity().getEstimate().getManagementFees()));
            hoa.add(getValue(item.getOpportunity().getEstimate().getHoa()));
            insurance.add(getValue(item.getOpportunity().getEstimate().getInsurance()));
            maintenance.add(getValue(item.getOpportunity().getEstimate().getMaintenance()));
            listingFees.add(getValue(item.getOpportunity().getEstimate().getListingFees()));
            vacancyExpense.add(getValue(item.getOpportunity().getEstimate().getVacancyExpense()));
            capexReserveContribution.add(getValue(item.getOpportunity().getEstimate().getCapexReserveContribution()));
            netOperatingIncome.add(getValue(item.getOpportunity().getEstimate().getNetOperatingIncome()));
            capRate.add(getValue(item.getOpportunity().getEstimate().getCapRate()));
            income.add(getValue(item.getBlockPortfolio().getIncome()));
            asian.add(getValue(item.getBlockPortfolio().getAsian()));
            black.add(getValue(item.getBlockPortfolio().getBlack()));
            hispanic.add(getValue(item.getBlockPortfolio().getHispanic()));
            white.add(getValue(item.getBlockPortfolio().getWhite()));
            pop5yr.add(getValue(item.getBlockPortfolio().getPop5yr()));
            bachelor.add(getValue(item.getBlockPortfolio().getBachelor()));

        }

        templateBO.setPicUrl(picUrl);
        templateBO.setUnparsedAddress(unparsedAddress);
        templateBO.setCountyOrParish(countyOrParish);
        templateBO.setStateOrProvince(stateOrProvince);
        templateBO.setPostalCode(postalCode);
        templateBO.setListPrice(listPrice);
        templateBO.setBathroomsFull(bathroomsFull);
        templateBO.setBedroomsTotal(bedroomsTotal);
        templateBO.setLivingArea(livingArea);
        templateBO.setOfferPrice(offerPrice);
        templateBO.setRehabCosts(rehabCosts);
        templateBO.setEstimatedMonthlyRent(estimatedMonthlyRent);
        templateBO.setPropertyTax(propertyTax);
        templateBO.setManagementFees(managementFees);
        templateBO.setHoa(hoa);
        templateBO.setInsurance(insurance);
        templateBO.setMaintenance(maintenance);
        templateBO.setListingFees(listingFees);
        templateBO.setVacancyExpense(vacancyExpense);
        templateBO.setCapexReserveContribution(capexReserveContribution);
        templateBO.setNetOperatingIncome(netOperatingIncome);
        templateBO.setCapRate(capRate);
        templateBO.setIncome(income);
        templateBO.setAsian(asian);
        templateBO.setBlack(black);
        templateBO.setHispanic(hispanic);
        templateBO.setWhite(white);
        templateBO.setPop5yr(pop5yr);
        templateBO.setBachelor(bachelor);
        templateBO.setDesc(desc);
        return templateBO;
    }

    public static String getValue(Object object) {
        return object != null ? object.toString() : "";
    }


    public static <T> List<List<T>> fixedGrouping(List<T> source, int n) {

        if (null == source || source.size() == 0 || n <= 0)
            return null;
        List<List<T>> result = new ArrayList<List<T>>();

        int sourceSize = source.size();
        int size = (sourceSize % n) == 0 ? (sourceSize / n) : ((source.size() / n) + 1);
        for (int i = 0; i < size; i++) {
            List<T> subset = new ArrayList<T>();
            for (int j = i * n; j < (i + 1) * n; j++) {
                if (j < sourceSize) {
                    subset.add(source.get(j));
                }
            }
            result.add(subset);
        }
        return result;
    }
}

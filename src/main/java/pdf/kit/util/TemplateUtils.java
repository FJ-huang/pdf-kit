package pdf.kit.util;

import pdf.kit.component.builder.PDFBuilder;
import pdf.kit.component.dto.BlockPortfolio;
import pdf.kit.component.dto.ListHubJsonDetailPlus;
import pdf.kit.component.dto.TemplateBO;

import java.util.ArrayList;
import java.util.List;

/**
 * @Author hyp
 * @Date 2020/6/28 3:31 下午
 * @Description TODO
 */
public class TemplateUtils {
    public static final String path =  PDFBuilder.class.getClassLoader().getResource("").getPath();

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
        List<String> yearlyExpense = new ArrayList<String>();
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

        List<String> overallScore = new ArrayList<String>();
        List<String> demand = new ArrayList<String>();
        List<String> retail = new ArrayList<String>();
        List<String> walk = new ArrayList<String>();
        List<String> current_ = new ArrayList<String>();
        List<String> future = new ArrayList<String>();
        List<String> schoolAvg = new ArrayList<String>();
        List<String> elememt = new ArrayList<String>();
        List<String> middle = new ArrayList<String>();
        List<String> high = new ArrayList<String>();
        List<String> supply = new ArrayList<String>();
        List<String> short_ = new ArrayList<String>();
        List<String> mid = new ArrayList<String>();
        List<String> long_ = new ArrayList<String>();
        List<String> performance = new ArrayList<String>();
        List<String> BlockPortCapRate = new ArrayList<String>();
        List<String> apprecia = new ArrayList<String>();
        List<String> return_ = new ArrayList<String>();
        List<String> risk = new ArrayList<String>();
        List<String> neighbor = new ArrayList<String>();
        List<String> pricev = new ArrayList<String>();
        List<String> crime = new ArrayList<String>();
        List<String> stress = new ArrayList<String>();
        List<String> vote = new ArrayList<String>();
        List<String> growth = new ArrayList<String>();
        List<String> loss = new ArrayList<String>();

        for (ListHubJsonDetailPlus item : data) {
            // page 1
            picUrl.add(getValue(item.getMedia().get(0).getMediaURL()));
            unparsedAddress.add(getValue(item.getUnparsedAddress()));
            countyOrParish.add(getValue(item.getCountyOrParish()));
            stateOrProvince.add(getValue(item.getStateOrProvince()));
            postalCode.add(getValue(item.getPostalCode()));
            listPrice.add(getValue(item.getListPrice()));
            bathroomsFull.add(getValue(item.getBathroomsFull()));
            bedroomsTotal.add(getValue(item.getBedroomsTotal()));
            livingArea.add(getValue(item.getLivingArea()));
            desc.add("<p>" + getValue(item.getUnparsedAddress()) + "</p><p>" + getValue(item.getCountyOrParish() + "," + getValue(item.getStateOrProvince()) + " " + getValue(item.getPostalCode()) + "</p><p>$" + getValue(item.getListPrice()) + "</p><p>" + getValue(item.getBathroomsFull()) + " bd | " + getValue(item.getBedroomsTotal()) +"ba | " + getValue(item.getLivingArea()) + " Sq ft</p>"));
            offerPrice.add(getValue(item.getOpportunity().getEstimate().getOfferPrice()));
            rehabCosts.add(getValue(item.getOpportunity().getEstimate().getRehabCosts()));
            estimatedMonthlyRent.add(getValue(item.getOpportunity().getEstimate().getEstimatedMonthlyRent()));
            yearlyExpense.add(getValue(item.getOpportunity().getEstimate().getYearlyExpense()));
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
            BlockPortfolio blockPortfolio = item.getBlockPortfolio();
            if (item.getBlockPortfolio() == null){
                black.add("");
                hispanic.add("");
                white.add("");
                pop5yr.add("");
                bachelor.add("");
            } else {
                black.add(getValue(blockPortfolio.getBlack()));
                hispanic.add(getValue(blockPortfolio.getHispanic()));
                white.add(getValue(blockPortfolio.getWhite()));
                pop5yr.add(getValue(blockPortfolio.getPop5yr()));
                bachelor.add(getValue(blockPortfolio.getBachelor()));

                //page 2
                // todo 暂无此字段
                overallScore.add("");
                demand.add(getImgPath(blockPortfolio.getDemand(), "type1-rect"));
                retail.add(getImgPath(blockPortfolio.getRetail(), "type1-cycle"));
                walk.add(getImgPath(blockPortfolio.getWalk(), "type1-cycle"));
                current_.add(getImgPath(blockPortfolio.getReturn_(), "type1-cycle"));
                future.add(getImgPath(blockPortfolio.getFuture(), "type1-cycle"));
                // todo 暂无此字段
                schoolAvg.add("");
                elememt.add(getImgPath(blockPortfolio.getElememt(), "type1-cycle"));
                middle.add(getImgPath(blockPortfolio.getMiddle(), "type1-cycle"));
                high.add(getImgPath(blockPortfolio.getHigh(), "type1-cycle"));

                supply.add(getImgPath(blockPortfolio.getSupply(), "type1-rect"));
                short_.add(getImgPath(blockPortfolio.getShort_(), "type2-cycle"));
                mid.add(getImgPath(blockPortfolio.getMid(), "type2-cycle"));
                long_.add(getImgPath(blockPortfolio.getLong_(), "type2-cycle"));

                performance.add(getImgPath(blockPortfolio.getPerform(), "type1-rect"));
                BlockPortCapRate.add(getImgPath(blockPortfolio.getCapRate(), "type1-cycle"));
                apprecia.add(getImgPath(blockPortfolio.getApprecia(), "type1-cycle"));
                return_.add(getImgPath(blockPortfolio.getReturn_(), "type1-cycle"));

                risk.add(getImgPath(blockPortfolio.getRisk(), "type1-rect"));
                neighbor.add(getImgPath(blockPortfolio.getNeighbor(), "type2-cycle"));
                pricev.add(getImgPath(blockPortfolio.getPricev(), "type2-cycle"));
                crime.add(getImgPath(blockPortfolio.getCrime(), "type2-cycle"));
                stress.add(getImgPath(blockPortfolio.getStress(), "type2-cycle"));
                vote.add(getImgPath(blockPortfolio.getVote(), "type2-cycle"));
                growth.add(getImgPath(blockPortfolio.getGrowth(), "type2-cycle"));
                loss.add(getImgPath(blockPortfolio.getLoss(), "type2-cycle"));
            }


        }
        // page 1
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
        templateBO.setYearlyExpense(yearlyExpense);
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

        //page 2
        templateBO.setOverallScore(overallScore);
        templateBO.setDemand(demand);
        templateBO.setRetail(retail);
        templateBO.setWalk(walk);
        templateBO.setCurrent_(current_);
        templateBO.setFuture(future);
        templateBO.setSchoolAvg(schoolAvg);
        templateBO.setElememt(elememt);
        templateBO.setMiddle(middle);
        templateBO.setHigh(high);
        templateBO.setSupply(supply);
        templateBO.setShort_(short_);
        templateBO.setMid(mid);
        templateBO.setLong_(long_);
        templateBO.setPerformance(performance);
        templateBO.setBlockPortCapRate(BlockPortCapRate);
        templateBO.setApprecia(apprecia);
        templateBO.setReturn_(return_);
        templateBO.setRisk(risk);
        templateBO.setNeighbor(neighbor);
        templateBO.setPricev(pricev);
        templateBO.setCrime(crime);
        templateBO.setStress(stress);
        templateBO.setVote(vote);
        templateBO.setGrowth(growth);
        templateBO.setLoss(loss);

        return templateBO;
    }

    public static String getValue(Object object) {
        return object != null ? object.toString() : "";
    }

    public static String getImgPath(Object object, String type) {
        String score = object.toString();
        if (score == null || "".equalsIgnoreCase(score)) {
            return "";
        }
        String imgPath = path + "image/score/" + type + "/" + score + ".png";
        if (type.endsWith("rect")) {
            return "<img src=\"" + imgPath + "\"/>&nbsp;" + score;
        }
        return "<img width=\"9px\" src=\"" + imgPath + "\"/>&nbsp;" + score;
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

package pdf.kit.component.dto;

import lombok.Data;
import pdf.kit.component.dto.BlockPortfolio;
import pdf.kit.component.dto.MediaBean;
import pdf.kit.component.dto.Opportunity;

import java.math.BigDecimal;
import java.util.List;

/**
 * @Author: tangshijun
 * @Desc:
 * @Date: 10:04 上午 2020/6/12
 */
@Data
public class ListHubJsonDetailPlus {

    private String opportunityType;

    private String ListingKey;

    /**
     * 展示的字段 start
     */
    private Integer ListPrice;
    private String StandardStatus;
    private Integer BedroomsTotal;
    private Integer BathroomsTotalInteger;
    private Integer BathroomsFull;
    private Integer BathroomsHalf;
    private Integer LivingArea;
    private String LivingAreaUnits;
    private String UnparsedAddress;
    private String PostalCity;
    private String CountyOrParish;
    private String StateOrProvince;
    private String PostalCode;

    /**
     * facts
     */
    private String PublicRemarks;
    private Integer StoriesTotal;
    private Integer YearBuilt;

    /**
     * property
     */
    private Integer UnitNumber;
    private String PropertyType;
    private String PropertySubType;
    private double LotSizeArea;
    private Integer ParkingTotal;
    private double LotSizeAcres;
    private String LotSizeUnits;
    //list
    private String ParkingFeatures;
    //list
    private String Appliances;
    private String Heating;
    private String Cooling;
    //list
    private String AccessibilityFeatures;
    //  y/n
    private String AccessibleElevatorInstalled;
    //list
    private String SecurityFeatures;

    /**
     * Interior Details
     */
    //list
    private String InteriorFeatures;
    private String Rooms;
    //list
    private String Flooring;
    //y/n
    private String FireplaceYN;
    //y/n
    private String SpaYN;

    /**
     * Exterior details
     */
    //list
    private String ExteriorFeatures;
    private String Fencing;
    //list
    private String Vegetation;
    private String Basement;
    //list
    private String PatioAndPorchFeatures;
    private String PoolPrivateYN;
    //list
    private String WaterfrontYN;
    private String WaterfrontFeatures;
    private String Dock;
    //list
    private String OtherStructures;
    private String View;

    /**
     * construction detail
     */
    //LIST
    private String ArchitecturalStyle;
    //LIST
    private String ConstructionMaterials;
    private String Roof;
    private String WindowFeatures;
    private String StructureType;

    /**
     * other details
     */
    private String ListingTitle;
    private String PropertyCondition;
    private String Utilities;

    /**
     * HOA
     */
    //{
    //        "Name": "OAKLAWN (11)"
    //      }
    private String Neighborhoods;
    private String SubdivisionName;
    private String ParcelNumber;
    //{
    //        "ExpenseFrequency": "Monthly",
    //        "ExpenseCategory": "Home Owner Assessments Fee",
    //        "ExpenseValue": 400
    //      }s
    private String Expenses;
    //ExpenseValue
    private BigDecimal ExpenseAmount;
    //ExpenseFrequency
    private String Frequency;

    /**
     * Agent Info
     */
    private String BrokerageName;
    private String BrokeragePhone;
    private String ListOfficePhone;
    private String ListAgentPreferredPhone;
    private String ListAgentOfficePhone;
    private String FranchiseAffiliation;
    private String ListingId;
    private String ListOfficeMlsId;
    private String ListAgentURL;
    private String ListingURL;
    private String Directions;
    private String Disclaimer;
    private List<MediaBean> Media;

    /**
     * 纬度
     */
    private String latitude;

    /**
     * 经度
     */
    private String longitude;

    /**
     * 地块信息
     */
    private BlockPortfolio blockPortfolio;

    /**
     * 是否保存
     */
    private Boolean isSaved = false;

    /**
     * 没登录的话，默认值
     */
    private Opportunity opportunity;
}

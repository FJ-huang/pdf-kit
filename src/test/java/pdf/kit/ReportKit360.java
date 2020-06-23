package pdf.kit;

import lombok.extern.slf4j.Slf4j;
import org.apache.commons.lang.exception.ExceptionUtils;
import pdf.kit.component.PDFHeaderFooter;
import pdf.kit.component.PDFKit;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by fgm on 2017/4/17.
 * 360报告
 */
@Slf4j
public class ReportKit360 {


    public String createPDF(String templatePath, Object data, String fileName) {
        //pdf保存路径
        try {
            //设置自定义PDF页眉页脚工具类
            PDFHeaderFooter headerFooter = new PDFHeaderFooter();
            PDFKit kit = new PDFKit();
            kit.setHeaderFooterBuilder(headerFooter);
            //设置输出路径
            kit.setSaveFilePath(templatePath + fileName);

            String saveFilePath = kit.exportToFile(fileName, data);
            return saveFilePath;
        } catch (Exception e) {
            log.error("PDF生成失败{}", ExceptionUtils.getFullStackTrace(e));
            return null;
        }

    }

    public static void main(String[] args) {

        ReportKit360 kit = new ReportKit360();
        TemplateTestBO templateBO = new TemplateTestBO();
        templateBO.setTemplateName("Property Comparison Report for John Appleseed ");
        templateBO.setFreeMarkerUrl("Here are the 50 listings with the highest overall scores for passive investment in the 3-mile radius of 8239 Merriweather Dr, Dallas, TX 75236:");

        List<String> picUrlList = new ArrayList<String>();
        picUrlList.add("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592818057653&di=acef58e382085bd4fc5ad29d96437d65&imgtype=0&src=http%3A%2F%2Fmedia-cdn.tripadvisor.com%2Fmedia%2Fphoto-s%2F02%2Fad%2F5e%2F63%2Ffilename-170-jpg-thumbnail0.jpg");
        picUrlList.add("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592914705922&di=ae8e616cb6185b432df9fce6cab676f4&imgtype=0&src=http%3A%2F%2Fimg1.gtimg.com%2Fhouse_fuzhou%2Fpics%2Fhv1%2F45%2F164%2F2043%2F132887940.jpg");
        picUrlList.add("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592914769518&di=a51ae3ab25efb81cf15bf0d4488c1525&imgtype=0&src=http%3A%2F%2Fy1.ifengimg.com%2F204f3036673ab826%2F2012%2F0303%2Fre_4f5175475999a.jpg");
        picUrlList.add("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592914789198&di=691bb1df563c23e24416cf48c7add9cb&imgtype=0&src=http%3A%2F%2Fdpic.tiankong.com%2F9k%2Fde%2FQJ6748445236.jpg%3Fx-oss-process%3Dstyle%2Fshow");
        picUrlList.add("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592914809010&di=ddd53c1b5e93f691853d8ddc93b6573c&imgtype=0&src=http%3A%2F%2Fn.sinaimg.cn%2Ffront%2F257%2Fw650h407%2F20190320%2FiC8Y-huqrnan3594274.jpg");
        templateBO.setPicUrlList(picUrlList);

        String desc = "8239 Merriweather Dr Dallas, TX 75236\n" + "$225,000 4 bd | 3 ba | 1819 Sq ft";
        List<String> descList = new ArrayList<String>();
        descList.add(desc);
        descList.add(desc);
        descList.add(desc);
        descList.add(desc);
        descList.add(desc);
        templateBO.setDescList(descList);

        List<String> offerPrice = new ArrayList<String>();
        offerPrice.add("1000");
        offerPrice.add("2000");
        offerPrice.add("3000");
        offerPrice.add("4000");
        offerPrice.add("5000");
        templateBO.setOfferPrice(offerPrice);

        List<TemplateTestBO> pages = new ArrayList<TemplateTestBO>();
        pages.add(templateBO);
        pages.add(templateBO);
        pages.add(templateBO);
        TemplatePageBO templatePageBO = new TemplatePageBO();
        templatePageBO.setContentPage(pages);

        String templatePath = "/Users/hyp/Desktop/pdf/templates/";
        String path = kit.createPDF(templatePath, templatePageBO, "hello1.pdf");
        System.out.println(path);


    }


}

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
        TemplateBO templateBO = new TemplateBO();
        templateBO.setTemplateName(" Hello TEST! ");
        templateBO.setFreeMarkerUrl("http://www.zheng-hang.com/chm/freemarker2_3_24/ref_directive_if.html");

        templateBO.setImageUrl("https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1592818057653&di=acef58e382085bd4fc5ad29d96437d65&imgtype=0&src=http%3A%2F%2Fmedia-cdn.tripadvisor.com%2Fmedia%2Fphoto-s%2F02%2Fad%2F5e%2F63%2Ffilename-170-jpg-thumbnail0.jpg");
        List<String> scores = new ArrayList<String>();
        scores.add("90");
        scores.add("95");
        scores.add("98");
        templateBO.setScores(scores);

        String templatePath = "/Users/hyp/Desktop/pdf/templates/";
        String path = kit.createPDF(templatePath, templateBO, "hello1.pdf");
        System.out.println(path);


    }


}

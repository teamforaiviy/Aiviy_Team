package com.kgc.exam.controller;

import com.alipay.api.AlipayApiException;
import com.alipay.api.AlipayClient;
import com.alipay.api.DefaultAlipayClient;
import com.alipay.api.request.AlipayTradePagePayRequest;
import com.kgc.exam.entity.AlipayAttr;
import com.kgc.exam.entity.Order;
import com.kgc.exam.entity.User;
import com.kgc.exam.service.OrderService;
import com.kgc.exam.service.OrderToGoodsRelationService;
import com.kgc.exam.service.ShoppingService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

@Controller
@RequestMapping("pay")
public class PayController {

    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderToGoodsRelationService orderToGoodsRelationService;
    @Autowired
    private ShoppingService shoppingService;

    /*
    * 创建订单并提交给阿里
    * */
    @RequestMapping("payForGoods")
    public void payForGoods(String price, HttpServletRequest request, HttpServletResponse response) throws IOException{
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String phoneNumber = user.getUserName();
        String name = user.getUserPhone();
        AlipayClient alipayClient = new DefaultAlipayClient(
                AlipayAttr.gatewayUrl, AlipayAttr.app_id,
                AlipayAttr.merchant_private_key, "json", AlipayAttr.charset,
                AlipayAttr.alipay_public_key, AlipayAttr.sign_type);
        // 创建唯一订单号
        int random = (int) (Math.random() * 10000);
        String dateStr = new SimpleDateFormat("yyyyMMddHHmmss").format(new Date());

        // 订单号拼接规则：手机号后四位+当前时间后四位+随机数四位数
        String out_trade_no = phoneNumber.substring(7) + dateStr.substring(10)
                + random;
        /*
        * 在数据库生成订单，订单状态未支付
        * 购物车中已生成的数据删除
        * 在订单-商品关系表中添加数据
        * */
        Order order = new Order();
        order.setoNo(out_trade_no);
        order.setoState(0);
        order.setoNum(Double.parseDouble(price));
        order.setUserId(user.getUserId());

        // 拼接订单名称
		String subject = name + "的订单";
        // 总价格设置
        // 设置请求参数
        AlipayTradePagePayRequest alipayRequest = new AlipayTradePagePayRequest();
        alipayRequest.setReturnUrl(AlipayAttr.return_url);//支付成功响应后跳转地址
        alipayRequest.setNotifyUrl(AlipayAttr.notify_url);//异步请求地址
        /*FAST_INSTANT_TRADE_PAY 二维码瞬时支付
         * out_trade_no 订单号 total_amount 订单金额  subject 订单名称
         */
        alipayRequest.setBizContent("{\"out_trade_no\":\"" + out_trade_no
                + "\"," + "\"total_amount\":\"" + price + "\","
                + "\"subject\":\"" + subject + "\"," + "\"body\":\""
                + ""+ "\"," + "\"product_code\":\"FAST_INSTANT_TRADE_PAY\"}");
        String result = "请求无响应";
        try {
            //通过阿里客户端，发送支付页面请求
            result = alipayClient.pageExecute(alipayRequest).getBody();
            response.getWriter().println("<html>\n" +
                    "\t<head>\n" +
                    "\t\t<meta charset=\"utf-8\">\n" +
                    "\t\t<title></title>\n" +
                    "\t</head>\n" +
                    "\t<body>"+result+"</body>\n" +
                    "</html>");
            response.getWriter().flush();
        } catch (AlipayApiException e) {
            e.printStackTrace();
        } finally {
            try {
                response.getWriter().close();
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    }
}

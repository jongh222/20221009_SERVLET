package dao;
import java.util.ArrayList;
import dto.Product;

public class ProductRepository{
    private ArrayList<Product> listOfProducts = new ArrayList<Product>();
    private static ProductRepository instance= new ProductRepository();
    
    public static ProductRepository getInstance(){
        return instance;
    }
    
    public ProductRepository(){
        Product GTX = new Product("P1200","GTX", 200000);
        GTX.setDescription("지포스 GTX 시리즈");
        GTX.setCategory("그래픽카드 GTX");
        GTX.setManufacturer("NVIDIA");
        GTX.setUnitsInStock(500);
        GTX.setCondition("Old");
        GTX.setFilename("P1200.jpg");
        
        Product RTX20 = new Product("P1220","RTX20", 300000);
        RTX20.setDescription("지포스 RTX 20시리즈");
        RTX20.setCategory("그래픽카드 RTX");
        RTX20.setManufacturer("NVIDIA");
        RTX20.setUnitsInStock(1000);
        RTX20.setCondition("Old");
        RTX20.setFilename("P1220.jpg");
        
        Product RTX30 = new Product("P1230","RTX30", 1200000);
        RTX30.setDescription("지포스 RTX 30시리즈");
        RTX30.setCategory("그래픽카드 RTX");
        RTX30.setManufacturer("NVIDIA");
        RTX30.setUnitsInStock(2000);
        RTX30.setCondition("New");
        RTX30.setFilename("P1230.jpg");
        
        Product RTX40 = new Product("P1240","RTX40", 1700000);
        RTX40.setDescription("지포스 RTX 40시리즈");
        RTX40.setCategory("그래픽카드 RTX");
        RTX40.setManufacturer("NVIDIA");
        RTX40.setUnitsInStock(1000);
        RTX40.setCondition("Refurbished");
        RTX40.setFilename("P1240.jpg");
        
        Product RX6000 = new Product("P1360","RX6000", 800000);
        RX6000.setDescription("RX6000 시리즈");
        RX6000.setCategory("그래픽카드 RX");
        RX6000.setManufacturer("AMD");
        RX6000.setUnitsInStock(8000);
        RX6000.setCondition("Old");
        RX6000.setFilename("P1360.jpg");
        
        Product RX7000 = new Product("P1370","RX7000", 100000);
        RX7000.setDescription("RX7000 시리즈");
        RX7000.setCategory("그래픽카드 RX");
        RX7000.setManufacturer("AMD");
        RX7000.setUnitsInStock(8000);
        RX7000.setCondition("Old");
        RX7000.setFilename("P1370.jpg");
        
        Product RX400 = new Product("P1340","RX400", 100000);
        RX400.setDescription("RX400 시리즈");
        RX400.setCategory("그래픽카드 RX");
        RX400.setManufacturer("AMD");
        RX400.setUnitsInStock(1000);
        RX400.setCondition("Old");
        RX400.setFilename("P1340.jpg");
        
        Product RX500 = new Product("P1350","RX500", 200000);
        RX500.setDescription("RX500 시리즈");
        RX500.setCategory("그래픽카드 RX");
        RX500.setManufacturer("AMD");
        RX500.setUnitsInStock(1000);
        RX500.setCondition("Refurbished");
        RX500.setFilename("P1350.jpg");
        
        Product RXVEGA = new Product("P1400","RXVEGA", 500000);
        RXVEGA.setDescription("RXVEGA 시리즈");
        RXVEGA.setCategory("그래픽카드 RX");
        RXVEGA.setManufacturer("AMD");
        RXVEGA.setUnitsInStock(2000);
        RXVEGA.setCondition("New");
        RXVEGA.setFilename("P1400.jpg");
        
        listOfProducts.add(GTX);
        listOfProducts.add(RTX20);
        listOfProducts.add(RTX30);
        listOfProducts.add(RTX40);
        listOfProducts.add(RX6000);
        listOfProducts.add(RX7000);
        listOfProducts.add(RX400);
        listOfProducts.add(RX500);
        listOfProducts.add(RXVEGA);
    }
    
    public ArrayList<Product> getAllProducts(){
        return listOfProducts;
    }
    
    public Product getProductById(String productId){
    Product productById=null;
    
    for(int i=0;i<listOfProducts.size();i++){
        Product product=listOfProducts.get(i);
        if(product !=null && product.getProductId()!=null&&product.getProductId().equals(productId)){
        productById=product;
        break;
        }
    }
        return productById;
    }
    public void addProduct(Product product){
        listOfProducts.add(product);
    }
}
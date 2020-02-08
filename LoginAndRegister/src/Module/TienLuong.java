package Module;

public class TienLuong {
    private String TenNV;
    private Float TienLuong;

    public TienLuong() {
    }

    public TienLuong(String tenNV, Float tienLuong) {
        TenNV = tenNV;
        TienLuong = tienLuong;
    }

    public String getTenNV() {
        return TenNV;
    }

    public void setTenNV(String tenNV) {
        TenNV = tenNV;
    }

    public Float getTienLuong() {
        return TienLuong;
    }

    public void setTienLuong(Float tienLuong) {
        TienLuong = tienLuong;
    }
}

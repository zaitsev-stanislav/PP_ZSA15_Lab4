package zsa15_lab4;

public class Microwave {

    private Integer id;
    private MicrowaveSpec microwaveSpec;
    private String brand;
    private String model;

    public Microwave() {
    }

    public Microwave(Integer id) {
        this.id = id;
    }

    public Microwave(Integer id, MicrowaveSpec microwaveSpec, String brand, String model) {
        this.id = id;
        this.microwaveSpec = microwaveSpec;
        this.brand = brand;
        this.model = model;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public MicrowaveSpec getMicrowaveSpec() {
        return microwaveSpec;
    }

    public void setMicrowaveSpec(MicrowaveSpec microwaveSpec) {
        this.microwaveSpec = microwaveSpec;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getModel() {
        return model;
    }

    public void setModel(String model) {
        this.model = model;
    }

    public String toString() {
        return "Microwave = " + id + ", " + microwaveSpec + ", brand = " + brand + ", model = " + model;
    }

}

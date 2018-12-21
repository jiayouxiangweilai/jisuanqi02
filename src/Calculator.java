public class Calculator {
    private double firstNum;
    private double secondNum;
    private char Operator = '+';
    private double result;

    public void calculate(){
        switch (this.Operator){
            case '+':
                this.result = this.firstNum + this.secondNum;
                break;
            case'-':
                this.result =this.firstNum - this.secondNum;
                break;
            case'*':
                this.result =this.firstNum * this.secondNum;
                break;
            case'/':
                if(this.secondNum == 0){
                    throw new RuntimeException("除数不能为0");
                }
                this.result =this.firstNum / this.secondNum;
                break;

                default:throw new RuntimeException("传入的字符非法");
        }
    }

    public double getFirstNum() {
        return firstNum;
    }

    public void setFirstNum(double firstNum) {
        this.firstNum = firstNum;
    }

    public double getSecondNum() {
        return secondNum;
    }

    public void setSecondNum(double secondNum) {
        this.secondNum = secondNum;
    }

    public char getOperator() {
        return Operator;
    }

    public void setOperator(char operator) {
        Operator = operator;
    }

    public double getResult() {
        return result;
    }

    public void setResult(double result) {
        this.result = result;
    }
}

public with sharing class reRenderTest {
    public List<Integer> testList = new List<Integer>();
    public String testStr1 {get; set;}

    public reRenderTest() {
        for(Integer i=10000; i<41000; i++){
            testList.add(i);
        }
        this.testStr1 = 'reRender前';
    }
    
    public void reRenderStrAction(){
        // this.testStr1 = 'reRender後';
        // if(this.testStr1 == 'reRender前'){
        //     this.testStr1 = 'reRender後';
        // }
        // if(this.testStr1 == 'reRender後'){
        //     this.testStr1 = 'reRender前';
        // }
    }
}

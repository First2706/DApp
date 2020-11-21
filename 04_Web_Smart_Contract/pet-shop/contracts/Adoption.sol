pragma solidity ^0.5.0; //ใช้ได้กับ เวอร์ชั่น 0.5.0 ขึ้นไป

contract Adoption{
    address[16] public adopters; // เก็บ array address 16 ตัว เริ่มต้นด้วยตำแหน่งที่ 0

    function adopt(uint petId) public returns (uint){
        require(petId >= 0 && petId <= 15); //สรเางเงื่อนไขให้กับ petId
        adopters[petId] = msg.sender; //เอาข้อมูล address มาให้  petId
        return petId; //return ค่าให้กับ petId ที่ส่งเข้ามา
    }

    //ใส่ view เราอ่านข้อมูลอย่างดียว บน อิเทอเรียม
    function getAdopters() public view returns (address[16] memory){ //เก็บข้อมูลให้ทั้งตาราง
        return adopters;
    }

     /*
    function detAdoropter(uint petId) public view return(address){ //return ชุดข้อมูล(address) 
        require(petID >= 0 && <= 15);
        return adopter[petId];
    }*/
}
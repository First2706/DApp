pragma solidity ^0.5.0;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/Adoption.sol";

contract TestAdoption{ //ถ้าต้องการใช้ฟังก์ชั่น test จะต้องขึ้นต้นด้วยคำว่า "test"

                    ///เราต้องการที่จะดูว่าAdoption() อยู่ที่ไหน
    Adoption adoption = Adoption(DeployedAddresses.Adoption());

    uint expectedPetId = 8;
    address expectedAdopter = address(this); 

    function testUderCanAdoptPet() public{
        uint returnedId = adoption.adopt(expectedPetId);

        //ใช้เทียบตัวแปร ถ้ากรณีนั้นข้อมูลไม่ตรงกันใหหแสดงค่าตาม text ทีเรกำหนดไว้
        Assert.equal(returnedId, expectedPetId, "Adoption of the expected pet should match what is returned.");
   }


 function testGetAdopterAddressByPetId() public {
    address adopter = adoption.adopters(expectedPetId); //get ค่า เราต้องการอ่าน adopter ที่ 8
    Assert.equal(adopter, expectedAdopter, "Owner of the expected pet should be this contract");
  }

    function testGetAdopterAddressByPetIdInArray() public {

    address[16] memory adopters = adoption.getAdopters();
    Assert.equal(adopters[expectedPetId], expectedAdopter, "Owner of the expected pet should be this contract");
  }
}
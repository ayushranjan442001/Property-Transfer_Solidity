pragma solidity >=0.6.6 <=0.9.0; 

contract Property {
   struct landDetails{
    address  creatorAdmin;
    uint256  adhaar;
    string  sname;
    string  bname;
    uint256  amount;
   }
    struct profiles{
        uint[] assetList;   
        }
    // Struct to store all property related details
    // struct PropertyDetail {
    //     Status status;
    //     uint256 value;
    //     address currOwner;
    // }
//init
    mapping(uint => landDetails) land;
    function Registration(uint256 _adhaar,string memory _sname, string memory _bname, uint256 _amount,uint id) public {
        land[id].adhaar=_adhaar;
        land[id].sname=_sname;
        land[id].bname=_bname;
        land[id].amount=_amount;
        //land[id].mount=_mount;
    }

    //  function viewAssets()public view returns(uint[] memory){
    //     return (profiles[msg.sender].assetList);
    //  }
//     // Modifier to ensure only the property owner access
//     // a specific property
//     modifier onlyOwner(uint256 _propId) {
//         require(properties[_propId].currOwner == msg.sender);
//         _;
// }
//     modifier verifiedUser(address _user) {
//         require(verifiedUsers[_user]);
//         _;
//     }

    // // Modifier to ensure only the verified admin access a function
    // modifier verifiedAdmin() {
    //     require(
    //         userRoles[msg.sender] >= Role.Admin && verifiedUsers[msg.sender]
    //     );
    //     _;
    // }
}
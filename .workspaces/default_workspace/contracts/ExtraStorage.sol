//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
//extrastoragecon. simplestoragecontractın çocuğu(inheritence)
import "./SimpleStorage.sol";
contract ExtraStorage is SimpleStorage{//inheritance yapınca simplestorageın tüm fonksiyonlarını alabiliyor
//Bu simplestorageda dönen sayının 5 fazlasını versin istiyoruz
//override
//virtual override
function store (uint256 _favoriteNumber) public override{//override func olduğundan override ekle
    favoriteNumber=_favoriteNumber+5;//bunu test için store a 5 yaz retrieve e bas
}
} 

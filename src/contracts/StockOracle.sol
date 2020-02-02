pragma solidity ^0.5.10;

contract StockOracle{
    struct stock{
        uint256 price;
        uint256 volume;
    }
    
    mapping (bytes4=>stock) stockQuote;
    
    address oracleOwner;
    
    function setStock(bytes4 symbol, uint256 _price, uint256 _volume) public returns (uint) {
        stockQuote[symbol] = stock(_price, _volume);
    }
    
    function getStockPrice(bytes4 symbol) public view returns (uint) {
        return stockQuote[symbol].price;
    }
    
    function getStockVolume(bytes4 symbol) public view returns (uint){
        return stockQuote[symbol].volume;
    }
}
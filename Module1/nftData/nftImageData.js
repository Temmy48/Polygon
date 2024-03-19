const fs = require('fs');
const path = require('path');
console.log(__dirname);

for (let i = 1; i <= 5; i++) {

  // Creates a JSON object for each NFT
  const json = {
      name: `EchoCoin NFT Data #${i}`,
      description: `An Black Man #${i}`,
      image: `https://gateway.pinata.cloud/ipfs/QmYU1VFUaAFjrRzJ1RE2XBcXVwmzwkQHYHYpcvJDwFkeLj/${i}.jpeg`
  };

  // Writes the JSON object to a file
  fs.writeFileSync(
    path.join(__dirname, 'nftImageData', String(i)),
    JSON.stringify(json)
  );
}

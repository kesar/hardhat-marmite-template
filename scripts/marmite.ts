import hre from 'hardhat';
import marmite from '@primitivefi/hardhat-marmite';

async function main() {
    await marmite(hre, async (flag) => {
        const Complex = await hre.ethers.getContractFactory('Complex');
        const complex = await Complex.deploy(1);

        const tx = await complex.set(42);
        await flag('Set function', tx);
    });
}

main();

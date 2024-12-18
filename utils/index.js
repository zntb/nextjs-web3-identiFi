import { ethers } from 'ethers';
import identiFi from '@/utils/IdentiFi.json';

export const contract = async () => {
  const provider = new ethers.providers.Web3Provider(window.ethereum);
  const { ethereum } = window;
  if (ethereum) {
    const signer = provider.getSigner();
    const contractReader = new ethers.Contract(
      '0xaBc01BECcFe4f80cE26BFBA73c258b2EDb866fE8',
      identiFi.abi,
      signer,
    );

    return contractReader;
  }
};

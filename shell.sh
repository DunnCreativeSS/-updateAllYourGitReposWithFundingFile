ARRAY=(-updateAllYourGitReposWithFundingFile -CryptoLongStraddleMonster aggr.trades-bitmex-sma-bot amz-seller-scrape-results api-connectors arb.jare.cloud arbbot autoUpSmoke BankofStaked-CE bfxfibbmonster binance-api-node binance-official-api-docs BinanceAdvancedOrdersNodeMongoServer binanceBots binancefibbmonster binanceFuturesMarketMakerPublic binanceMarketMaker binanceStableArbChecker binance_market_maker_program_requirement_beater BingKeywordAndLocalityScraper_Alpha bitfinexfibbmonster bitfinextradenoticingbot bitmex-combined-smas-livenet bitmexfibbmarginmonster bitmexichimokumonster bitmexMarketMaker bitsharesjs blocktivityapi cash_carry_leveraged_futures_arbitrageur ccd classic-frontend)
i=0
for var in "${ARRAY[@]}"
do
  git clone "https://dunncreativess:{personalaccesstoken}@github.com/dunncreativess/${var}" $i --depth 1
    
  cd $i
  git config --global user.email "jarettrsdunn+git@gmail.com"
  git config --global user.name "https://github.com/DunnCreativeSS/-updateAllYourGitReposWithFundingFile"

  mkdir -p .github
  rm .github/FUNDING.yml

  echo "github: [dunncreativess] 
  custom: ['https://www.blockchain.com/btc/address/166MyypvJaqqDCGxyZ37pwCYc9jT4jNWhg', 'https://etherscan.io/address/0xAc34E16776c768226aA416836b63f403f35a28f3']" >> .github/FUNDING.yml

  git add .
  git commit -m "FUNDING.yml"
  git push
  cd ..
  i=$((i+1))
done


/**
 * Created at 2021/8/1 23:15
 *
 * @author Liangcheng Juves
 */

// @ts-check

// deno run --allow-write genObfuscationDict.js
// node genObfuscationDict.js

const result = new Set();

const keys = ["l", "I", "1", "O", "o", "0", "$"];

for (let o = 1; o < 100000; o++) {
  for (let len = 6; len < 13; len++) {
    let tmp = keys[Math.floor(Math.random() + 0.5)];
    for (let i = 1; i < len + 1; i++) {
      tmp += keys[Math.floor(Math.random() * keys.length)];
    }
    result.add(tmp);
  }
}

const runOnDeno = () => {
  return typeof Deno === "object";
};

const outputFileName = "obfuscation.dict";

if (runOnDeno()) {
  const encoder = new TextEncoder();
  const file = Deno.openSync(outputFileName, { write: true, create: true });

  for (const item of result) {
    const data = encoder.encode(`${item}\n`);
    Deno.writeSync(file.rid, data);
  }

  Deno.close(file.rid);
} else {
  const fs = await import("fs");
  const writeStream = fs.createWriteStream(outputFileName);
  for (const item of result) {
    writeStream.write(`${item}\n`);
  }
  writeStream.end();
}

console.log(`Generate "${outputFileName}" successfully!`);

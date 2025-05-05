
const sum=require("./sum");

test('1 + 2 is expected to be 5',()=>{
    expect(sum(2,3)).toBe(5);
});
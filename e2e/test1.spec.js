describe('Example', () => {
  before(async () => {
    await device.relaunchApp();
  });

  it('should have welcome screen', async () => {
    // await expect(element(by.text('Welcome'))).toBeVisible();
    // await device.setURLBlacklist(['.*.baidu.com.*']);
    // await sleep(5000);
    await new Promise(resolve => setTimeout(resolve, 5000));
    // await expect(element(by.text('百度一下'))).toBeVisible();
    await  element(by.id('wkwebview')).tapAtPoint({x:100, y:160});
    await expect(element(by.text('打开'))).toBeVisible();
    // await expect(element(by.text('Say Hello'))).toBeVisible();
    // await expect(element(by.text('Say World'))).toBeVisible();
  });

  it('should show hello screen after tap', async () => {
    // await element(by.text('Say Hello')).tap();
    // await expect(element(by.text('Hello!!!'))).toBeVisible();
  });

  it('should show world screen after tap', async () => {
    // await element(by.text('Say World')).tap();
    // await expect(element(by.text('World!!!'))).toBeVisible();
  });
});

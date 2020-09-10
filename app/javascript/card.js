const pay = () => {
  Payjp.setPublicKey("pk_test_ea41a74aa7836e665be44d85");　// PAY.JPテスト公開鍵
  const form = document.getElementById("charge-form");
  form.addEventListener("submit", (e) => {
    e.preventDefault();
 
    const formResult = document.getElementById("charge-form");
    const formData = new FormData(formResult);
    console.log(...formData.entries());
    const card = {
      number: formData.get("card_name"),
      cvc: formData.get("security_code"),
      exp_month: formData.get("card_period_month"),
      exp_year: `20${formData.get("card_period_year")}`,
    };
    console.log(card)
    Payjp.createToken(card, (status, response) => {
      if (status == 200) {
        const token = response.id;
        const renderDom = document.getElementById("charge-form");
        const tokenObj = `<input value=${token} type="hidden" name='token'>`;
        renderDom.insertAdjacentHTML("beforeend", tokenObj);
      }
      document.getElementById("card_name").removeAttribute("name");
      document.getElementById("security_code").removeAttribute("name");
      document.getElementById("card_period_month").removeAttribute("name");
      document.getElementById("card_period_year").removeAttribute("name");
 
      document.getElementById("charge-form").submit();
      document.getElementById("charge-form").reset();
    });
  });
 };
 
 window.addEventListener("load", pay);
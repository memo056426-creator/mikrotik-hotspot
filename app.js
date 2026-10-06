(() => {
  const button = document.getElementById("togglePassword");
  const input = document.getElementById("password");

  if (!button || !input) return;

  button.addEventListener("click", () => {
    const hidden = input.type === "password";
    input.type = hidden ? "text" : "password";
    button.textContent = hidden ? "إخفاء" : "إظهار";
    button.setAttribute("aria-label", hidden ? "إخفاء كلمة المرور" : "إظهار كلمة المرور");
  });
})();

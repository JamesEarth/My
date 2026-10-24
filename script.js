// Wait until the HTML document is fully loaded
document.addEventListener("DOMContentLoaded", () => {
  // Select elements from the DOM
  const actionButton = document.getElementById("action-btn");
  const hiddenMessage = document.getElementById("message");

  // Listen for a click event on the button
  actionButton.addEventListener("click", () => {
    // Toggle the visibility of the hidden message
    if (hiddenMessage.classList.contains("hidden")) {
      hiddenMessage.classList.remove("hidden");
      actionButton.textContent = "Hide Message";
    } else {
      hiddenMessage.classList.add("hidden");
      actionButton.textContent = "Click Me!";
    }
  });
});

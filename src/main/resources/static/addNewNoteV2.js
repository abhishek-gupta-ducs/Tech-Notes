$(function () {
  $(".btn-close").click(function () {
    // Get the class of form section (desc, lay-exp, use-case)
    const subheadingClass = $(this).attr("class").split(" ")[1];

    // Hide the specific form field
    $(`.${subheadingClass}`).addClass("d-none");

    // Unhide the corresponding dropdown item
    $(`.dropdown-item.${subheadingClass}`).removeClass("d-none");

    // Check if all fields are hidden
    if ($(".form-field.d-none").length === $(".form-field").length) {
      $(".form-submit-button").addClass("d-none"); // Hide submit button
    }

    // Show dropdown again if at least one field is visible
    if ($(".dropdown-item.d-none").length !== $(".dropdown-item").length) {
      $(".dropdown").removeClass("d-none");
    }
  });

  $(".dropdown-item").click(function () {
    const subheadingClass = $(this).attr("class").split(" ")[1];

    // Show the form field related to the selected subheading
    $(`.${subheadingClass}`).removeClass("d-none");

    // Hide the corresponding dropdown item
    $(this).addClass("d-none");

    // Show the submit button when at least one field is added
    $(".form-submit-button").removeClass("d-none");

    // Hide the dropdown if all dropdown items are invisible
    if ($(".dropdown-item.d-none").length === $(".dropdown-item").length) {
      $(".dropdown").addClass("d-none");
    }
  });
});

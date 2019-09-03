const dashboard_animation = () => {
  const btn_profil = document.getElementById('profil_btn');
  const btn_criteres = document.getElementById('criteres_btn');
  const btn_fetiches = document.getElementById('fetiches_btn');
  const show_profil = document.getElementById('profil');
  const show_criteres = document.getElementById('criteres');
  const show_fetiches = document.getElementById('fetiches');

  btn_profil.addEventListener("click", (event) => {
    btn_profil.classList.add("active");
    show_profil.classList.remove("disappear");
    btn_criteres.classList.remove("active");
    btn_fetiches.classList.remove("active");
    show_criteres.classList.add("disappear");
    show_fetiches.classList.add("disappear");
  });

  btn_criteres.addEventListener("click", (event) => {
    btn_criteres.classList.add("active");
    show_criteres.classList.remove("disappear");
    btn_profil.classList.remove("active");
    btn_fetiches.classList.remove("active");
    show_profil.classList.add("disappear");
    show_fetiches.classList.add("disappear");
  });

  btn_fetiches.addEventListener("click", (event) => {
    btn_fetiches.classList.add("active");
    show_fetiches.classList.remove("disappear");
    btn_profil.classList.remove("active");
    btn_criteres.classList.remove("active");
    show_profil.classList.add("disappear");
    show_criteres.classList.add("disappear");
  });
};


export { dashboard_animation };

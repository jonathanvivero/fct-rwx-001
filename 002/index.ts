class Jonathan {
public BirthYear: number = 1950;

  public get Edad() { // getter
    return new Date().getFullYear() - this.BirthYear;
  }

  public set Edad(val:number) { // setter
    this.BirthYear = new Date().getFullYear() - val;
    /*
      codigo que me de la gana
    */
  }

  public getEdad() {
    return new Date().getFullYear() - this.BirthYear;
  }

  public setEdad(val: number) {
    this.BirthYear = new Date().getFullYear() - val;
  }
}

  const jona = new Jonathan();

  jona.BirthYear = 1977;

  console.log(jona.Edad);

  jona.Edad = 50;

  console.log(jona.Edad);
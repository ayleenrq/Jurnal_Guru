class Jurnal {
  DateTime _waktuPembuatan;
  String kelas;
  String mapel;
  int jamKe;
  String tujuanPembelajaran;
  // String materiTopik;
  // String kegiatanPembelajaran;
  // String profilPelajarMahasiswa;

  // Constructor
  Jurnal({
    this.kelas = '',
    this.mapel = '',
    this.jamKe = 0,
    this.tujuanPembelajaran = '',
  }) : _waktuPembuatan = DateTime.now(); // sebelum dilakukan, waktu pembuatan dicatat dahulu

  // Getter untuk _waktuPembuatan
  get waktuPembuatan => this._waktuPembuatan;
}
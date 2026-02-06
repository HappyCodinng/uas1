class KosImages {
  static String getImageById(int idKos) {
    final images = {
      1: 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2',
      2: 'https://images.unsplash.com/photo-1598928506311-c55ded91a20c',
      3: 'https://images.unsplash.com/photo-1600585154340-be6161a56a0c',
      4: 'https://images.unsplash.com/photo-1580587771525-78b9dba3b914',
    };

    return images[idKos] ??
        'https://images.unsplash.com/photo-1505691938895-1758d7feb511';
  }
}

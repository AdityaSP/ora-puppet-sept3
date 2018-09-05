class apache2::stop{
  service{'apache2': ensure=> stopped}
}

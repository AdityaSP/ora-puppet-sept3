class apache2::start{
  service{'apache2': ensure=>true, enable=>true}
}

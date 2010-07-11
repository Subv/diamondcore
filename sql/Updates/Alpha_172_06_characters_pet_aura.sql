alter table `pet_aura` drop primary key;
alter table `pet_aura` add primary key (`guid`,`spell`);

ansible -vvvv wordpress -u vagrant -i hosts.yml --private-key .vagrant/machines/wordpress/virtualbox/private_key -m shell -a "echo hello world"

ansible-playbook provisioning -u vagrant -i hosts.yml --private-key .vagrant/machines/wordpress/virtualbox/private_key

https://docs.ansible.com/ansible/latest/collections/community/mysql/mysql_db_module.html

https://docs.ansible.com/ansible/2.9/modules/list_of_database_modules.html

https://docs.ansible.com/ansible/latest/playbook_guide/playbooks_variables.html#what-makes-a-valid-variable-name

https://jinja.palletsprojects.com/en/3.1.x/

https://flask.palletsprojects.com/en/2.2.x/

larissadasilvasantos746@gmail.com
w0rdpr&5s


vagrant up
vagrant destroy -f wordpress
vagrant status


    # - name: Instala pacotes de dependencias do sistema operacional
    #   apt:
    #     name: "{{ item }}"
    #     state: latest
    #   become: yes
    #   with_items:
    #     - php5
    #     - apache2
    #     - libapache2-mod-php5
    #     - php5-gd
    #     - libssh2-php
    #     - php5-mcrypt
    #     - mysql-server-5.6
    #     - python-mysqldb
    #     - php5-mysql


        - name: Configura Apache para servir wordpress
      copy:
        src: 'files/000-default.conf'
        dest: '/etc/apache2/sites-available/000-default.conf'
      become: yes
      notify:
        - restart apache


<template>
  <div>
    <user-write-form type="modify" />
  </div>
</template>

<script>
import UserWriteForm from '@/components/user/include/UserWriteForm.vue';

export default {
  name: 'usercreate',
  components: {
    UserWriteForm,
  },
};
</script>

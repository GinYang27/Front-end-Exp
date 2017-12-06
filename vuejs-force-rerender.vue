<template>
  <comment-post :commentandreplies="commentandreplies" @updateComment = "updateFlag++" :key="updateFlag"></comment-post>
</template>

rerenderComments() {
  this.updateFlag ++;
},

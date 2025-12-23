enum Status {
  approved,
  pending,
  rejected
}

void main(){
  Status status = Status.approved;
  if(status == Status.approved) {
    print('승인이 완료되었습니다.');
  } else if(status == Status.pending) {
    print('대기 중이니 기다려주세요.');
  } else {
    print('죄송합니다. 거절되었습니다.');
  }
}
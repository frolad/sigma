C  ���� FORCE
C �������� ������������ FORCE
C     �O��PO�PAMMA PA�HECEH�� HA�P��OK �� �����
C     B���BAETC� �� MAIN, ���������� ������� ���.
C ==================================================================
*     IPR ������ ���������� �������
*FORCEX - ������ ��������� �� ������� ����� � ��������� X ����� � ������� ��������� 
*�������������� ����
*CORD - ���������� ������ ���������� ��������� ����� (������ ��� �������� ����� ������� 
*�������� ������������ ���� 1 �� ��� � � Y ��������������, ������ ���� ��������� - ���� 2 � �.�.).
*R - ������ �������� ������ � ����� (���������� �� ��������� ������� CORD, ������ ������ ���������
* � ��� ����������� �������� �������� �� ��� � � Y � �����);
C NR- ����� ����������� ����� 
C ==================================================================
C wwwwwwwwwwwwwwwwww ������ ���� FORCE wwwwwwwwwwwwwwwwwwwwwwwwwwwww
C ��� Example 1
C ==================================================================
      SUBROUTINE FORCE(NB,CORD,NRC,DB,IPR,NP,RSUM,R,NDF,DH,NR,
     >PRM1,PRM2,PRM3,PRM4,PRM5,PRM6)
C  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
C  �O��PO�PAMMA PA�HECEH�� HA�P��OK, B���BAETC� �� ++MAIN+
C  +++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
      LOGICAL*1 IPR(50)
      DIMENSION CORD(1),R(1)
       IF(IPR(22)) WRITE(6,22)PRM1,PRM2,PRM3,PRM4,PRM5,PRM6
      IF(IPR(23)) WRITE(6,20)
      NR=0
      I=0
  70  I=I+1 
      XI=CORD(2*(I-1)+1)
      YI=CORD(2*(I-1)+2)
      IF(I.GT.NP) GO TO 75
      IF (YI.LT.(DH-0.01)) GOTO 12
      IF (XI.LT.(DB-0.01)) GOTO 121
      NR=NR+1
      R((I-1)*NDF+2)=PRM2/(2.*(NRC-1))
      GOTO 14
  121 IF (XI.LT.((DB/2.)+0.01)) GOTO 124
      NR=NR+1
      R((I-1)*NDF+2)=PRM2/(NRC-1)
      GOTO 14
  124 NR=NR+1
      R((I-1)*NDF+2)=PRM2/(2.*(NRC-1))
      GOTO 14
  12  CONTINUE
      IF(.NOT.((YI.GT.((DH/2)-0.01)).AND.(YI.LT.((DH/2)+0.01)).AND. 
     > (XI.LT.0.01).AND.(XI.GT.-0.01))) GOTO 70
      NR=NR+1
      R((I-1)*NDF+1)=PRM1
  14  IF(IPR(23)) WRITE(6,21) NR,I,CORD(2*(I-1)+1),CORD(2*(I-1)+2),
     > R((I-1)*NDF+1),R((I-1)*NDF+2)
       GO TO 70
      IF(IPR(23)) PRINT *,"����� ����������� ����� NR=",NR
  21  FORMAT  (2I6,1X,2F10.3,4X,2F9.2)
 122  RETURN
  75  IF (NR.NE.0) GOTO 122
      WRITE(6,6) (I,(R((I-1)*NDF+J),J=1,NDF),I=1,NP)
   6  FORMAT (' HE HA��EH� TO�K� �P��O�EH�� HA�P��OK'/8(I4,2G10.2))
  20  FORMAT (' PAC�PE�E�EH�E HA�P��OK'/ '     N    ��E�   X-COORD',
     >        '    Y-COORD       * RX *     * RY *')
22     FORMAT (10X,'��������� ��������� (�������� �  FORCE)'
     >/6X,'PRM1',6X,'PRM2',
     >6X,'PRM3',6X,'PRM4',6X,'PRM5',6X,'PRM6'/(2X,6F10.4))
      STOP
      END
C ==================================================================
C wwwwwwwwwwwwwwwwww ����� ���� FORCE wwwwwwwwwwwwwwwwwwwwwwwwwwwww
C ==================================================================
C ����� ����� FORCE

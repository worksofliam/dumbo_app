**free

ctl-opt dftactgrp(*no);

dcl-pi P3512;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3493.rpgleinc'
/copy 'qrpgleref/P1361.rpgleinc'
/copy 'qrpgleref/P1033.rpgleinc'

theCharVar = 'Hello from P3512';
dsply theCharVar;
callp localProc();
P3493();
P1361();
P1033();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3512 in the procedure';
end-proc;
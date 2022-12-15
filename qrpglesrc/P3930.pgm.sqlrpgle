**free

ctl-opt dftactgrp(*no);

dcl-pi P3930;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3524.rpgleinc'
/copy 'qrpgleref/P2076.rpgleinc'
/copy 'qrpgleref/P1955.rpgleinc'

dcl-ds T1673 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1673 FROM T1673 LIMIT 1;

theCharVar = 'Hello from P3930';
dsply theCharVar;
callp localProc();
P3524();
P2076();
P1955();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3930 in the procedure';
end-proc;
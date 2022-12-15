**free

ctl-opt dftactgrp(*no);

dcl-pi P3325;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P328.rpgleinc'
/copy 'qrpgleref/P2327.rpgleinc'
/copy 'qrpgleref/P1127.rpgleinc'

dcl-ds T1004 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1004 FROM T1004 LIMIT 1;

theCharVar = 'Hello from P3325';
dsply theCharVar;
callp localProc();
P328();
P2327();
P1127();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3325 in the procedure';
end-proc;
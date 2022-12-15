**free

ctl-opt dftactgrp(*no);

dcl-pi P3823;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1133.rpgleinc'
/copy 'qrpgleref/P1453.rpgleinc'
/copy 'qrpgleref/P2250.rpgleinc'

dcl-ds T927 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T927 FROM T927 LIMIT 1;

theCharVar = 'Hello from P3823';
dsply theCharVar;
callp localProc();
P1133();
P1453();
P2250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3823 in the procedure';
end-proc;
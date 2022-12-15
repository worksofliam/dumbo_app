**free

ctl-opt dftactgrp(*no);

dcl-pi P1171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1127.rpgleinc'
/copy 'qrpgleref/P852.rpgleinc'
/copy 'qrpgleref/P984.rpgleinc'

dcl-ds T1641 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1641 FROM T1641 LIMIT 1;

theCharVar = 'Hello from P1171';
dsply theCharVar;
callp localProc();
P1127();
P852();
P984();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1171 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P439.rpgleinc'
/copy 'qrpgleref/P133.rpgleinc'

dcl-ds T1396 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1396 FROM T1396 LIMIT 1;

theCharVar = 'Hello from P481';
dsply theCharVar;
callp localProc();
P8();
P439();
P133();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P481 in the procedure';
end-proc;
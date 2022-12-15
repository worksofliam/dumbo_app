**free

ctl-opt dftactgrp(*no);

dcl-pi P4692;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P4008.rpgleinc'
/copy 'qrpgleref/P2718.rpgleinc'
/copy 'qrpgleref/P753.rpgleinc'

dcl-ds T76 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T76 FROM T76 LIMIT 1;

theCharVar = 'Hello from P4692';
dsply theCharVar;
callp localProc();
P4008();
P2718();
P753();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4692 in the procedure';
end-proc;
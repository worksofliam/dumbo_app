**free

ctl-opt dftactgrp(*no);

dcl-pi P4689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2560.rpgleinc'
/copy 'qrpgleref/P1536.rpgleinc'
/copy 'qrpgleref/P1873.rpgleinc'

dcl-ds T624 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T624 FROM T624 LIMIT 1;

theCharVar = 'Hello from P4689';
dsply theCharVar;
callp localProc();
P2560();
P1536();
P1873();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4689 in the procedure';
end-proc;
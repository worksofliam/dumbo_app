**free

ctl-opt dftactgrp(*no);

dcl-pi P2256;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1495.rpgleinc'
/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P890.rpgleinc'

dcl-ds T1765 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1765 FROM T1765 LIMIT 1;

theCharVar = 'Hello from P2256';
dsply theCharVar;
callp localProc();
P1495();
P832();
P890();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2256 in the procedure';
end-proc;
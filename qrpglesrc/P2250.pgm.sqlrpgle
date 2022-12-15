**free

ctl-opt dftactgrp(*no);

dcl-pi P2250;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1953.rpgleinc'
/copy 'qrpgleref/P1938.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'

dcl-ds T1763 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1763 FROM T1763 LIMIT 1;

theCharVar = 'Hello from P2250';
dsply theCharVar;
callp localProc();
P1953();
P1938();
P49();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2250 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P2373;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1953.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P2107.rpgleinc'

dcl-ds T713 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T713 FROM T713 LIMIT 1;

theCharVar = 'Hello from P2373';
dsply theCharVar;
callp localProc();
P1953();
P669();
P2107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2373 in the procedure';
end-proc;
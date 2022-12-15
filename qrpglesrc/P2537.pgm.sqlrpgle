**free

ctl-opt dftactgrp(*no);

dcl-pi P2537;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1063.rpgleinc'
/copy 'qrpgleref/P1293.rpgleinc'
/copy 'qrpgleref/P1017.rpgleinc'

dcl-ds T338 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T338 FROM T338 LIMIT 1;

theCharVar = 'Hello from P2537';
dsply theCharVar;
callp localProc();
P1063();
P1293();
P1017();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2537 in the procedure';
end-proc;
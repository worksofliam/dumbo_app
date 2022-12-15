**free

ctl-opt dftactgrp(*no);

dcl-pi P2059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1619.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'

dcl-ds T624 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T624 FROM T624 LIMIT 1;

theCharVar = 'Hello from P2059';
dsply theCharVar;
callp localProc();
P1619();
P326();
P1733();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2059 in the procedure';
end-proc;
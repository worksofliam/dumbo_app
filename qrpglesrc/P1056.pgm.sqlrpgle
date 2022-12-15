**free

ctl-opt dftactgrp(*no);

dcl-pi P1056;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P120.rpgleinc'
/copy 'qrpgleref/P776.rpgleinc'
/copy 'qrpgleref/P533.rpgleinc'

dcl-ds theTable extname('T784') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T784 LIMIT 1;

theCharVar = 'Hello from P1056';
dsply theCharVar;
callp localProc();
P120();
P776();
P533();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1056 in the procedure';
end-proc;
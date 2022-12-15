**free

ctl-opt dftactgrp(*no);

dcl-pi P1483;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1143.rpgleinc'
/copy 'qrpgleref/P384.rpgleinc'
/copy 'qrpgleref/P279.rpgleinc'

dcl-ds theTable extname('T201') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T201 LIMIT 1;

theCharVar = 'Hello from P1483';
dsply theCharVar;
callp localProc();
P1143();
P384();
P279();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1483 in the procedure';
end-proc;
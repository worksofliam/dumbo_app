**free

ctl-opt dftactgrp(*no);

dcl-pi P2304;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2293.rpgleinc'
/copy 'qrpgleref/P1037.rpgleinc'
/copy 'qrpgleref/P697.rpgleinc'

dcl-ds theTable extname('T1374') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1374 LIMIT 1;

theCharVar = 'Hello from P2304';
dsply theCharVar;
callp localProc();
P2293();
P1037();
P697();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2304 in the procedure';
end-proc;
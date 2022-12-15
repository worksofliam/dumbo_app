**free

ctl-opt dftactgrp(*no);

dcl-pi P3723;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3037.rpgleinc'
/copy 'qrpgleref/P1633.rpgleinc'
/copy 'qrpgleref/P1613.rpgleinc'

dcl-ds theTable extname('T1050') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1050 LIMIT 1;

theCharVar = 'Hello from P3723';
dsply theCharVar;
callp localProc();
P3037();
P1633();
P1613();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3723 in the procedure';
end-proc;
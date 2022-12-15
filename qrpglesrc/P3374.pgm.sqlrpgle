**free

ctl-opt dftactgrp(*no);

dcl-pi P3374;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3169.rpgleinc'
/copy 'qrpgleref/P1964.rpgleinc'
/copy 'qrpgleref/P1534.rpgleinc'

dcl-ds theTable extname('T1647') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1647 LIMIT 1;

theCharVar = 'Hello from P3374';
dsply theCharVar;
callp localProc();
P3169();
P1964();
P1534();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3374 in the procedure';
end-proc;
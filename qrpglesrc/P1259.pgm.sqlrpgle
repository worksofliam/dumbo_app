**free

ctl-opt dftactgrp(*no);

dcl-pi P1259;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P832.rpgleinc'
/copy 'qrpgleref/P879.rpgleinc'
/copy 'qrpgleref/P783.rpgleinc'

dcl-ds theTable extname('T290') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T290 LIMIT 1;

theCharVar = 'Hello from P1259';
dsply theCharVar;
callp localProc();
P832();
P879();
P783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1259 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P3043;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P1910.rpgleinc'
/copy 'qrpgleref/P446.rpgleinc'

dcl-ds theTable extname('T1780') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1780 LIMIT 1;

theCharVar = 'Hello from P3043';
dsply theCharVar;
callp localProc();
P592();
P1910();
P446();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3043 in the procedure';
end-proc;
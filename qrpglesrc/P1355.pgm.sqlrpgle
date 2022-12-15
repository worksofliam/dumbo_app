**free

ctl-opt dftactgrp(*no);

dcl-pi P1355;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P560.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'
/copy 'qrpgleref/P23.rpgleinc'

dcl-ds theTable extname('T1230') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1230 LIMIT 1;

theCharVar = 'Hello from P1355';
dsply theCharVar;
callp localProc();
P560();
P314();
P23();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1355 in the procedure';
end-proc;
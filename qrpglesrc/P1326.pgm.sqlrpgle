**free

ctl-opt dftactgrp(*no);

dcl-pi P1326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P592.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds theTable extname('T620') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T620 LIMIT 1;

theCharVar = 'Hello from P1326';
dsply theCharVar;
callp localProc();
P592();
P24();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1326 in the procedure';
end-proc;
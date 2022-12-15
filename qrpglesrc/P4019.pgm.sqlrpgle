**free

ctl-opt dftactgrp(*no);

dcl-pi P4019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3675.rpgleinc'
/copy 'qrpgleref/P3288.rpgleinc'
/copy 'qrpgleref/P1519.rpgleinc'

dcl-ds theTable extname('T720') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T720 LIMIT 1;

theCharVar = 'Hello from P4019';
dsply theCharVar;
callp localProc();
P3675();
P3288();
P1519();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4019 in the procedure';
end-proc;
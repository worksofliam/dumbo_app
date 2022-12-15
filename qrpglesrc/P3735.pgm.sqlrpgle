**free

ctl-opt dftactgrp(*no);

dcl-pi P3735;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3067.rpgleinc'
/copy 'qrpgleref/P3305.rpgleinc'
/copy 'qrpgleref/P1035.rpgleinc'

dcl-ds theTable extname('T899') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T899 LIMIT 1;

theCharVar = 'Hello from P3735';
dsply theCharVar;
callp localProc();
P3067();
P3305();
P1035();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3735 in the procedure';
end-proc;
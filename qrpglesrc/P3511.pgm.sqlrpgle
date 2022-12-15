**free

ctl-opt dftactgrp(*no);

dcl-pi P3511;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1067.rpgleinc'
/copy 'qrpgleref/P2898.rpgleinc'
/copy 'qrpgleref/P2755.rpgleinc'

dcl-ds theTable extname('T851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T851 LIMIT 1;

theCharVar = 'Hello from P3511';
dsply theCharVar;
callp localProc();
P1067();
P2898();
P2755();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3511 in the procedure';
end-proc;
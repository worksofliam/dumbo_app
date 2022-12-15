**free

ctl-opt dftactgrp(*no);

dcl-pi P3993;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1894.rpgleinc'
/copy 'qrpgleref/P2474.rpgleinc'
/copy 'qrpgleref/P3383.rpgleinc'

dcl-ds theTable extname('T399') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T399 LIMIT 1;

theCharVar = 'Hello from P3993';
dsply theCharVar;
callp localProc();
P1894();
P2474();
P3383();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3993 in the procedure';
end-proc;
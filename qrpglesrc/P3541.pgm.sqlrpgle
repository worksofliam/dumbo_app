**free

ctl-opt dftactgrp(*no);

dcl-pi P3541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2242.rpgleinc'
/copy 'qrpgleref/P2945.rpgleinc'
/copy 'qrpgleref/P1759.rpgleinc'

dcl-ds theTable extname('T56') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T56 LIMIT 1;

theCharVar = 'Hello from P3541';
dsply theCharVar;
callp localProc();
P2242();
P2945();
P1759();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3541 in the procedure';
end-proc;
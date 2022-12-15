**free

ctl-opt dftactgrp(*no);

dcl-pi P1928;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1080.rpgleinc'
/copy 'qrpgleref/P1799.rpgleinc'
/copy 'qrpgleref/P1250.rpgleinc'

dcl-ds theTable extname('T621') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T621 LIMIT 1;

theCharVar = 'Hello from P1928';
dsply theCharVar;
callp localProc();
P1080();
P1799();
P1250();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1928 in the procedure';
end-proc;
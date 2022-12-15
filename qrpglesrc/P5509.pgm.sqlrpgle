**free

ctl-opt dftactgrp(*no);

dcl-pi P5509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1502.rpgleinc'
/copy 'qrpgleref/P1372.rpgleinc'
/copy 'qrpgleref/P2937.rpgleinc'

dcl-ds theTable extname('T1447') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1447 LIMIT 1;

theCharVar = 'Hello from P5509';
dsply theCharVar;
callp localProc();
P1502();
P1372();
P2937();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5509 in the procedure';
end-proc;
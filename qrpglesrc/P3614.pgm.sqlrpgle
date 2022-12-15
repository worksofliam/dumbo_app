**free

ctl-opt dftactgrp(*no);

dcl-pi P3614;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2463.rpgleinc'
/copy 'qrpgleref/P108.rpgleinc'
/copy 'qrpgleref/P2167.rpgleinc'

dcl-ds theTable extname('T152') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T152 LIMIT 1;

theCharVar = 'Hello from P3614';
dsply theCharVar;
callp localProc();
P2463();
P108();
P2167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3614 in the procedure';
end-proc;
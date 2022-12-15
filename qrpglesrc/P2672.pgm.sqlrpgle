**free

ctl-opt dftactgrp(*no);

dcl-pi P2672;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1537.rpgleinc'
/copy 'qrpgleref/P2464.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'

dcl-ds theTable extname('T531') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T531 LIMIT 1;

theCharVar = 'Hello from P2672';
dsply theCharVar;
callp localProc();
P1537();
P2464();
P836();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2672 in the procedure';
end-proc;
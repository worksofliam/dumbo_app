**free

ctl-opt dftactgrp(*no);

dcl-pi P2663;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1515.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P639.rpgleinc'

dcl-ds theTable extname('T693') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T693 LIMIT 1;

theCharVar = 'Hello from P2663';
dsply theCharVar;
callp localProc();
P1515();
P240();
P639();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2663 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P2709;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1392.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'
/copy 'qrpgleref/P103.rpgleinc'

dcl-ds theTable extname('T576') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T576 LIMIT 1;

theCharVar = 'Hello from P2709';
dsply theCharVar;
callp localProc();
P1392();
P193();
P103();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2709 in the procedure';
end-proc;
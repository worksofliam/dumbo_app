**free

ctl-opt dftactgrp(*no);

dcl-pi P2726;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2030.rpgleinc'
/copy 'qrpgleref/P2571.rpgleinc'
/copy 'qrpgleref/P694.rpgleinc'

dcl-ds theTable extname('T72') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T72 LIMIT 1;

theCharVar = 'Hello from P2726';
dsply theCharVar;
callp localProc();
P2030();
P2571();
P694();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2726 in the procedure';
end-proc;
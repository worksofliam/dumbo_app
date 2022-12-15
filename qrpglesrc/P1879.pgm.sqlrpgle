**free

ctl-opt dftactgrp(*no);

dcl-pi P1879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P739.rpgleinc'
/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'

dcl-ds theTable extname('T1217') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1217 LIMIT 1;

theCharVar = 'Hello from P1879';
dsply theCharVar;
callp localProc();
P739();
P0();
P498();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1879 in the procedure';
end-proc;
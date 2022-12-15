**free

ctl-opt dftactgrp(*no);

dcl-pi P1495;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P333.rpgleinc'
/copy 'qrpgleref/P1143.rpgleinc'

dcl-ds theTable extname('T48') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T48 LIMIT 1;

theCharVar = 'Hello from P1495';
dsply theCharVar;
callp localProc();
P456();
P333();
P1143();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1495 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P2421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P293.rpgleinc'
/copy 'qrpgleref/P870.rpgleinc'
/copy 'qrpgleref/P1462.rpgleinc'

dcl-ds theTable extname('T716') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T716 LIMIT 1;

theCharVar = 'Hello from P2421';
dsply theCharVar;
callp localProc();
P293();
P870();
P1462();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2421 in the procedure';
end-proc;
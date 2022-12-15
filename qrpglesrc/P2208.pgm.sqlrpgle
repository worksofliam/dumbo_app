**free

ctl-opt dftactgrp(*no);

dcl-pi P2208;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P456.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P1529.rpgleinc'

dcl-ds theTable extname('T558') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T558 LIMIT 1;

theCharVar = 'Hello from P2208';
dsply theCharVar;
callp localProc();
P456();
P359();
P1529();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2208 in the procedure';
end-proc;
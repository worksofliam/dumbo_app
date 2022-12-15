**free

ctl-opt dftactgrp(*no);

dcl-pi P2145;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1892.rpgleinc'
/copy 'qrpgleref/P480.rpgleinc'
/copy 'qrpgleref/P1719.rpgleinc'

dcl-ds theTable extname('T552') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T552 LIMIT 1;

theCharVar = 'Hello from P2145';
dsply theCharVar;
callp localProc();
P1892();
P480();
P1719();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2145 in the procedure';
end-proc;
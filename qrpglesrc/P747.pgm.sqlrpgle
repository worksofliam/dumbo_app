**free

ctl-opt dftactgrp(*no);

dcl-pi P747;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P50.rpgleinc'
/copy 'qrpgleref/P292.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'

dcl-ds theTable extname('T862') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T862 LIMIT 1;

theCharVar = 'Hello from P747';
dsply theCharVar;
callp localProc();
P50();
P292();
P522();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P747 in the procedure';
end-proc;
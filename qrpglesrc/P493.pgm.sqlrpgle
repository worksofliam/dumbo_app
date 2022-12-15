**free

ctl-opt dftactgrp(*no);

dcl-pi P493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P237.rpgleinc'
/copy 'qrpgleref/P402.rpgleinc'

dcl-ds theTable extname('T108') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T108 LIMIT 1;

theCharVar = 'Hello from P493';
dsply theCharVar;
callp localProc();
P32();
P237();
P402();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P493 in the procedure';
end-proc;
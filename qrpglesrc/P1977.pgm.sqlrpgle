**free

ctl-opt dftactgrp(*no);

dcl-pi P1977;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1577.rpgleinc'
/copy 'qrpgleref/P563.rpgleinc'
/copy 'qrpgleref/P171.rpgleinc'

dcl-ds theTable extname('T947') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T947 LIMIT 1;

theCharVar = 'Hello from P1977';
dsply theCharVar;
callp localProc();
P1577();
P563();
P171();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1977 in the procedure';
end-proc;
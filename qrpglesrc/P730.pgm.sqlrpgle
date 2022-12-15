**free

ctl-opt dftactgrp(*no);

dcl-pi P730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P457.rpgleinc'
/copy 'qrpgleref/P503.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'

dcl-ds theTable extname('T777') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T777 LIMIT 1;

theCharVar = 'Hello from P730';
dsply theCharVar;
callp localProc();
P457();
P503();
P445();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P730 in the procedure';
end-proc;
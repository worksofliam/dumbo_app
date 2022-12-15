**free

ctl-opt dftactgrp(*no);

dcl-pi P3390;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P325.rpgleinc'
/copy 'qrpgleref/P815.rpgleinc'
/copy 'qrpgleref/P885.rpgleinc'

dcl-ds theTable extname('T367') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T367 LIMIT 1;

theCharVar = 'Hello from P3390';
dsply theCharVar;
callp localProc();
P325();
P815();
P885();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3390 in the procedure';
end-proc;
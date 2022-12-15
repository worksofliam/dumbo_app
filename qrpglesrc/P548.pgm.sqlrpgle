**free

ctl-opt dftactgrp(*no);

dcl-pi P548;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P240.rpgleinc'
/copy 'qrpgleref/P358.rpgleinc'
/copy 'qrpgleref/P211.rpgleinc'

dcl-ds theTable extname('T130') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T130 LIMIT 1;

theCharVar = 'Hello from P548';
dsply theCharVar;
callp localProc();
P240();
P358();
P211();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P548 in the procedure';
end-proc;
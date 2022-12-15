**free

ctl-opt dftactgrp(*no);

dcl-pi P226;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P190.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P95.rpgleinc'

dcl-ds theTable extname('T154') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T154 LIMIT 1;

theCharVar = 'Hello from P226';
dsply theCharVar;
callp localProc();
P190();
P124();
P95();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P226 in the procedure';
end-proc;
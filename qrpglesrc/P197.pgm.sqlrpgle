**free

ctl-opt dftactgrp(*no);

dcl-pi P197;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P79.rpgleinc'
/copy 'qrpgleref/P62.rpgleinc'
/copy 'qrpgleref/P167.rpgleinc'

dcl-ds theTable extname('T705') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T705 LIMIT 1;

theCharVar = 'Hello from P197';
dsply theCharVar;
callp localProc();
P79();
P62();
P167();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P197 in the procedure';
end-proc;
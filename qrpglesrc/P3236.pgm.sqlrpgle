**free

ctl-opt dftactgrp(*no);

dcl-pi P3236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2504.rpgleinc'
/copy 'qrpgleref/P780.rpgleinc'
/copy 'qrpgleref/P2783.rpgleinc'

dcl-ds theTable extname('T772') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T772 LIMIT 1;

theCharVar = 'Hello from P3236';
dsply theCharVar;
callp localProc();
P2504();
P780();
P2783();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3236 in the procedure';
end-proc;
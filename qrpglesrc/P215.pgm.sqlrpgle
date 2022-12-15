**free

ctl-opt dftactgrp(*no);

dcl-pi P215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P168.rpgleinc'
/copy 'qrpgleref/P189.rpgleinc'

dcl-ds theTable extname('T1329') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1329 LIMIT 1;

theCharVar = 'Hello from P215';
dsply theCharVar;
callp localProc();
P109();
P168();
P189();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P215 in the procedure';
end-proc;
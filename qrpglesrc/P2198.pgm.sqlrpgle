**free

ctl-opt dftactgrp(*no);

dcl-pi P2198;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P877.rpgleinc'
/copy 'qrpgleref/P149.rpgleinc'
/copy 'qrpgleref/P811.rpgleinc'

dcl-ds theTable extname('T702') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T702 LIMIT 1;

theCharVar = 'Hello from P2198';
dsply theCharVar;
callp localProc();
P877();
P149();
P811();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2198 in the procedure';
end-proc;
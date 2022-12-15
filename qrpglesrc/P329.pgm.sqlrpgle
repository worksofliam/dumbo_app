**free

ctl-opt dftactgrp(*no);

dcl-pi P329;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P234.rpgleinc'
/copy 'qrpgleref/P226.rpgleinc'
/copy 'qrpgleref/P240.rpgleinc'

dcl-ds theTable extname('T989') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T989 LIMIT 1;

theCharVar = 'Hello from P329';
dsply theCharVar;
callp localProc();
P234();
P226();
P240();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P329 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P379;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P352.rpgleinc'
/copy 'qrpgleref/P337.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P379';
dsply theCharVar;
callp localProc();
P352();
P337();
P150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P379 in the procedure';
end-proc;
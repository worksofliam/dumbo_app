**free

ctl-opt dftactgrp(*no);

dcl-pi P598;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T46') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T46 LIMIT 1;

theCharVar = 'Hello from P598';
dsply theCharVar;
callp localProc();
P569();
P422();
P109();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P598 in the procedure';
end-proc;
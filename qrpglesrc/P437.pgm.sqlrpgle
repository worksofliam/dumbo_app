**free

ctl-opt dftactgrp(*no);

dcl-pi P437;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P139.rpgleinc'
/copy 'qrpgleref/P397.rpgleinc'

dcl-ds theTable extname('T959') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T959 LIMIT 1;

theCharVar = 'Hello from P437';
dsply theCharVar;
callp localProc();
P283();
P139();
P397();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P437 in the procedure';
end-proc;
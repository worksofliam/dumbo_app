**free

ctl-opt dftactgrp(*no);

dcl-pi P601;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'

dcl-ds theTable extname('T16') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T16 LIMIT 1;

theCharVar = 'Hello from P601';
dsply theCharVar;
callp localProc();
P397();
P250();
P367();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P601 in the procedure';
end-proc;
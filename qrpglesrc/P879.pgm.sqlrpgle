**free

ctl-opt dftactgrp(*no);

dcl-pi P879;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P444.rpgleinc'
/copy 'qrpgleref/P352.rpgleinc'

dcl-ds theTable extname('T354') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T354 LIMIT 1;

theCharVar = 'Hello from P879';
dsply theCharVar;
callp localProc();
P397();
P444();
P352();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P879 in the procedure';
end-proc;
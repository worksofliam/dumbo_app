**free

ctl-opt dftactgrp(*no);

dcl-pi P1114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P463.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P881.rpgleinc'

dcl-ds theTable extname('T163') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T163 LIMIT 1;

theCharVar = 'Hello from P1114';
dsply theCharVar;
callp localProc();
P463();
P477();
P881();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1114 in the procedure';
end-proc;
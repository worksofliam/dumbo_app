**free

ctl-opt dftactgrp(*no);

dcl-pi P515;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P182.rpgleinc'
/copy 'qrpgleref/P90.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'

dcl-ds theTable extname('T239') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T239 LIMIT 1;

theCharVar = 'Hello from P515';
dsply theCharVar;
callp localProc();
P182();
P90();
P354();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P515 in the procedure';
end-proc;
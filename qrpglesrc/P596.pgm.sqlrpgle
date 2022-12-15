**free

ctl-opt dftactgrp(*no);

dcl-pi P596;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P499.rpgleinc'
/copy 'qrpgleref/P367.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'

dcl-ds T231 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T231 FROM T231 LIMIT 1;

theCharVar = 'Hello from P596';
dsply theCharVar;
callp localProc();
P499();
P367();
P332();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P596 in the procedure';
end-proc;
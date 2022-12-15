**free

ctl-opt dftactgrp(*no);

dcl-pi P405;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P318.rpgleinc'
/copy 'qrpgleref/P56.rpgleinc'
/copy 'qrpgleref/P260.rpgleinc'

dcl-ds T328 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T328 FROM T328 LIMIT 1;

theCharVar = 'Hello from P405';
dsply theCharVar;
callp localProc();
P318();
P56();
P260();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P405 in the procedure';
end-proc;
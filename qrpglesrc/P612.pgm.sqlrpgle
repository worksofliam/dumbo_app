**free

ctl-opt dftactgrp(*no);

dcl-pi P612;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P598.rpgleinc'
/copy 'qrpgleref/P540.rpgleinc'
/copy 'qrpgleref/P422.rpgleinc'

dcl-ds T49 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T49 FROM T49 LIMIT 1;

theCharVar = 'Hello from P612';
dsply theCharVar;
callp localProc();
P598();
P540();
P422();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P612 in the procedure';
end-proc;
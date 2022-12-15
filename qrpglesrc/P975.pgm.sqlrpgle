**free

ctl-opt dftactgrp(*no);

dcl-pi P975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'
/copy 'qrpgleref/P962.rpgleinc'

dcl-ds T436 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T436 FROM T436 LIMIT 1;

theCharVar = 'Hello from P975';
dsply theCharVar;
callp localProc();
P84();
P288();
P962();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P975 in the procedure';
end-proc;
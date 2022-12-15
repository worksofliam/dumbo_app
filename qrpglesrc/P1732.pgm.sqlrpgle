**free

ctl-opt dftactgrp(*no);

dcl-pi P1732;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P388.rpgleinc'
/copy 'qrpgleref/P1089.rpgleinc'
/copy 'qrpgleref/P1487.rpgleinc'

dcl-ds T681 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T681 FROM T681 LIMIT 1;

theCharVar = 'Hello from P1732';
dsply theCharVar;
callp localProc();
P388();
P1089();
P1487();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1732 in the procedure';
end-proc;
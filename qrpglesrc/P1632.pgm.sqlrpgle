**free

ctl-opt dftactgrp(*no);

dcl-pi P1632;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P521.rpgleinc'
/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P640.rpgleinc'

dcl-ds T786 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T786 FROM T786 LIMIT 1;

theCharVar = 'Hello from P1632';
dsply theCharVar;
callp localProc();
P521();
P332();
P640();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1632 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P332.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds T166 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T166 FROM T166 LIMIT 1;

theCharVar = 'Hello from P1388';
dsply theCharVar;
callp localProc();
P332();
P105();
P288();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1388 in the procedure';
end-proc;
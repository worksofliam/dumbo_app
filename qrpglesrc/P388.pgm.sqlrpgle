**free

ctl-opt dftactgrp(*no);

dcl-pi P388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P66.rpgleinc'
/copy 'qrpgleref/P382.rpgleinc'
/copy 'qrpgleref/P356.rpgleinc'

dcl-ds T111 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T111 FROM T111 LIMIT 1;

theCharVar = 'Hello from P388';
dsply theCharVar;
callp localProc();
P66();
P382();
P356();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P388 in the procedure';
end-proc;
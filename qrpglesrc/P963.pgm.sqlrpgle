**free

ctl-opt dftactgrp(*no);

dcl-pi P963;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P264.rpgleinc'
/copy 'qrpgleref/P646.rpgleinc'
/copy 'qrpgleref/P845.rpgleinc'

dcl-ds T301 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T301 FROM T301 LIMIT 1;

theCharVar = 'Hello from P963';
dsply theCharVar;
callp localProc();
P264();
P646();
P845();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P963 in the procedure';
end-proc;
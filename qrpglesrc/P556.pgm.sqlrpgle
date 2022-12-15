**free

ctl-opt dftactgrp(*no);

dcl-pi P556;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P304.rpgleinc'
/copy 'qrpgleref/P252.rpgleinc'

dcl-ds T96 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T96 FROM T96 LIMIT 1;

theCharVar = 'Hello from P556';
dsply theCharVar;
callp localProc();
P359();
P304();
P252();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P556 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1682;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P43.rpgleinc'

dcl-ds T555 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T555 FROM T555 LIMIT 1;

theCharVar = 'Hello from P1682';
dsply theCharVar;
callp localProc();
P767();
P359();
P43();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1682 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1689;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1271.rpgleinc'
/copy 'qrpgleref/P1566.rpgleinc'
/copy 'qrpgleref/P1150.rpgleinc'

dcl-ds T971 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T971 FROM T971 LIMIT 1;

theCharVar = 'Hello from P1689';
dsply theCharVar;
callp localProc();
P1271();
P1566();
P1150();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1689 in the procedure';
end-proc;
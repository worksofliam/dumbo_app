**free

ctl-opt dftactgrp(*no);

dcl-pi P1194;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P767.rpgleinc'
/copy 'qrpgleref/P296.rpgleinc'

dcl-ds T598 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T598 FROM T598 LIMIT 1;

theCharVar = 'Hello from P1194';
dsply theCharVar;
callp localProc();
P372();
P767();
P296();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1194 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1059;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P415.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P584.rpgleinc'

dcl-ds T185 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T185 FROM T185 LIMIT 1;

theCharVar = 'Hello from P1059';
dsply theCharVar;
callp localProc();
P415();
P755();
P584();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1059 in the procedure';
end-proc;
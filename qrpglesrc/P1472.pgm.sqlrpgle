**free

ctl-opt dftactgrp(*no);

dcl-pi P1472;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1252.rpgleinc'
/copy 'qrpgleref/P1305.rpgleinc'
/copy 'qrpgleref/P107.rpgleinc'

dcl-ds T1173 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1173 FROM T1173 LIMIT 1;

theCharVar = 'Hello from P1472';
dsply theCharVar;
callp localProc();
P1252();
P1305();
P107();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1472 in the procedure';
end-proc;
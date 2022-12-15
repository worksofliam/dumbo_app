**free

ctl-opt dftactgrp(*no);

dcl-pi P733;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P324.rpgleinc'
/copy 'qrpgleref/P311.rpgleinc'
/copy 'qrpgleref/P230.rpgleinc'

dcl-ds T144 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T144 FROM T144 LIMIT 1;

theCharVar = 'Hello from P733';
dsply theCharVar;
callp localProc();
P324();
P311();
P230();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P733 in the procedure';
end-proc;
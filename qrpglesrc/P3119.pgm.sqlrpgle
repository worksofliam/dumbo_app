**free

ctl-opt dftactgrp(*no);

dcl-pi P3119;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1441.rpgleinc'
/copy 'qrpgleref/P2938.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'

dcl-ds T1230 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1230 FROM T1230 LIMIT 1;

theCharVar = 'Hello from P3119';
dsply theCharVar;
callp localProc();
P1441();
P2938();
P394();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3119 in the procedure';
end-proc;
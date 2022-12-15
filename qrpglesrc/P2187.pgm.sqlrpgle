**free

ctl-opt dftactgrp(*no);

dcl-pi P2187;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P1292.rpgleinc'

dcl-ds T285 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T285 FROM T285 LIMIT 1;

theCharVar = 'Hello from P2187';
dsply theCharVar;
callp localProc();
P417();
P854();
P1292();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2187 in the procedure';
end-proc;
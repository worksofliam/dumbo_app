**free

ctl-opt dftactgrp(*no);

dcl-pi P421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P390.rpgleinc'
/copy 'qrpgleref/P394.rpgleinc'
/copy 'qrpgleref/P263.rpgleinc'

dcl-ds T209 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T209 FROM T209 LIMIT 1;

theCharVar = 'Hello from P421';
dsply theCharVar;
callp localProc();
P390();
P394();
P263();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P421 in the procedure';
end-proc;
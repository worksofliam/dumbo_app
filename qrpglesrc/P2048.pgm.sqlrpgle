**free

ctl-opt dftactgrp(*no);

dcl-pi P2048;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1872.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P933.rpgleinc'

dcl-ds T1092 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1092 FROM T1092 LIMIT 1;

theCharVar = 'Hello from P2048';
dsply theCharVar;
callp localProc();
P1872();
P586();
P933();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2048 in the procedure';
end-proc;
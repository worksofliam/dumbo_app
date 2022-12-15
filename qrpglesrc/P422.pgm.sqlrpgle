**free

ctl-opt dftactgrp(*no);

dcl-pi P422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P173.rpgleinc'
/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds T1632 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1632 FROM T1632 LIMIT 1;

theCharVar = 'Hello from P422';
dsply theCharVar;
callp localProc();
P173();
P99();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P422 in the procedure';
end-proc;
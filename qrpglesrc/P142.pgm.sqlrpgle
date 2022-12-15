**free

ctl-opt dftactgrp(*no);

dcl-pi P142;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P99.rpgleinc'
/copy 'qrpgleref/P118.rpgleinc'
/copy 'qrpgleref/P40.rpgleinc'

dcl-ds T388 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T388 FROM T388 LIMIT 1;

theCharVar = 'Hello from P142';
dsply theCharVar;
callp localProc();
P99();
P118();
P40();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P142 in the procedure';
end-proc;
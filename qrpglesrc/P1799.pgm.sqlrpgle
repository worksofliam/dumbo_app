**free

ctl-opt dftactgrp(*no);

dcl-pi P1799;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P97.rpgleinc'
/copy 'qrpgleref/P6.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds T1358 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1358 FROM T1358 LIMIT 1;

theCharVar = 'Hello from P1799';
dsply theCharVar;
callp localProc();
P97();
P6();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1799 in the procedure';
end-proc;
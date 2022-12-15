**free

ctl-opt dftactgrp(*no);

dcl-pi P4209;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3204.rpgleinc'
/copy 'qrpgleref/P2439.rpgleinc'
/copy 'qrpgleref/P1913.rpgleinc'

dcl-ds T1390 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1390 FROM T1390 LIMIT 1;

theCharVar = 'Hello from P4209';
dsply theCharVar;
callp localProc();
P3204();
P2439();
P1913();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4209 in the procedure';
end-proc;
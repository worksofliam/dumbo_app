**free

ctl-opt dftactgrp(*no);

dcl-pi P2551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1803.rpgleinc'
/copy 'qrpgleref/P1447.rpgleinc'
/copy 'qrpgleref/P1678.rpgleinc'

dcl-ds T1438 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1438 FROM T1438 LIMIT 1;

theCharVar = 'Hello from P2551';
dsply theCharVar;
callp localProc();
P1803();
P1447();
P1678();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2551 in the procedure';
end-proc;
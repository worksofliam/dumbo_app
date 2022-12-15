**free

ctl-opt dftactgrp(*no);

dcl-pi P4494;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2332.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P4325.rpgleinc'

dcl-ds T1836 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1836 FROM T1836 LIMIT 1;

theCharVar = 'Hello from P4494';
dsply theCharVar;
callp localProc();
P2332();
P52();
P4325();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4494 in the procedure';
end-proc;
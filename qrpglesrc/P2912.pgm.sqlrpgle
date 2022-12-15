**free

ctl-opt dftactgrp(*no);

dcl-pi P2912;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1068.rpgleinc'
/copy 'qrpgleref/P1590.rpgleinc'
/copy 'qrpgleref/P937.rpgleinc'

dcl-ds T1462 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1462 FROM T1462 LIMIT 1;

theCharVar = 'Hello from P2912';
dsply theCharVar;
callp localProc();
P1068();
P1590();
P937();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2912 in the procedure';
end-proc;
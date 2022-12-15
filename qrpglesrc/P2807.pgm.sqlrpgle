**free

ctl-opt dftactgrp(*no);

dcl-pi P2807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2320.rpgleinc'
/copy 'qrpgleref/P1878.rpgleinc'
/copy 'qrpgleref/P1335.rpgleinc'

dcl-ds T1042 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1042 FROM T1042 LIMIT 1;

theCharVar = 'Hello from P2807';
dsply theCharVar;
callp localProc();
P2320();
P1878();
P1335();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2807 in the procedure';
end-proc;
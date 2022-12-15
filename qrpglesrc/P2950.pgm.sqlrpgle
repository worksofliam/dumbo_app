**free

ctl-opt dftactgrp(*no);

dcl-pi P2950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1775.rpgleinc'
/copy 'qrpgleref/P2660.rpgleinc'
/copy 'qrpgleref/P2376.rpgleinc'

dcl-ds T1494 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1494 FROM T1494 LIMIT 1;

theCharVar = 'Hello from P2950';
dsply theCharVar;
callp localProc();
P1775();
P2660();
P2376();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2950 in the procedure';
end-proc;
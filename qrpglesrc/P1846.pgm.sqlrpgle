**free

ctl-opt dftactgrp(*no);

dcl-pi P1846;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1272.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'
/copy 'qrpgleref/P714.rpgleinc'

dcl-ds T793 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T793 FROM T793 LIMIT 1;

theCharVar = 'Hello from P1846';
dsply theCharVar;
callp localProc();
P1272();
P1168();
P714();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1846 in the procedure';
end-proc;
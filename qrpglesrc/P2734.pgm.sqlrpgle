**free

ctl-opt dftactgrp(*no);

dcl-pi P2734;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1755.rpgleinc'
/copy 'qrpgleref/P2481.rpgleinc'
/copy 'qrpgleref/P2334.rpgleinc'

dcl-ds T1633 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1633 FROM T1633 LIMIT 1;

theCharVar = 'Hello from P2734';
dsply theCharVar;
callp localProc();
P1755();
P2481();
P2334();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2734 in the procedure';
end-proc;
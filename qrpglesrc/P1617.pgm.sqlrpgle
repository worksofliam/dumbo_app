**free

ctl-opt dftactgrp(*no);

dcl-pi P1617;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P794.rpgleinc'
/copy 'qrpgleref/P1220.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'

dcl-ds T975 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T975 FROM T975 LIMIT 1;

theCharVar = 'Hello from P1617';
dsply theCharVar;
callp localProc();
P794();
P1220();
P338();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1617 in the procedure';
end-proc;
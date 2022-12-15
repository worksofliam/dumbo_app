**free

ctl-opt dftactgrp(*no);

dcl-pi P2019;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1040.rpgleinc'
/copy 'qrpgleref/P1794.rpgleinc'
/copy 'qrpgleref/P1618.rpgleinc'

dcl-ds T1244 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1244 FROM T1244 LIMIT 1;

theCharVar = 'Hello from P2019';
dsply theCharVar;
callp localProc();
P1040();
P1794();
P1618();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2019 in the procedure';
end-proc;
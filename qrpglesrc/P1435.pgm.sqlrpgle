**free

ctl-opt dftactgrp(*no);

dcl-pi P1435;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1203.rpgleinc'
/copy 'qrpgleref/P1153.rpgleinc'
/copy 'qrpgleref/P1168.rpgleinc'

dcl-ds T77 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T77 FROM T77 LIMIT 1;

theCharVar = 'Hello from P1435';
dsply theCharVar;
callp localProc();
P1203();
P1153();
P1168();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1435 in the procedure';
end-proc;
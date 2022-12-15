**free

ctl-opt dftactgrp(*no);

dcl-pi P1583;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1537.rpgleinc'
/copy 'qrpgleref/P1292.rpgleinc'
/copy 'qrpgleref/P1559.rpgleinc'

dcl-ds T1117 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T1117 FROM T1117 LIMIT 1;

theCharVar = 'Hello from P1583';
dsply theCharVar;
callp localProc();
P1537();
P1292();
P1559();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1583 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1824;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1484.rpgleinc'
/copy 'qrpgleref/P233.rpgleinc'
/copy 'qrpgleref/P870.rpgleinc'

dcl-ds T957 ext qualified;
end-ds;

EXEC SQL SELECT * INTO :T957 FROM T957 LIMIT 1;

theCharVar = 'Hello from P1824';
dsply theCharVar;
callp localProc();
P1484();
P233();
P870();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1824 in the procedure';
end-proc;
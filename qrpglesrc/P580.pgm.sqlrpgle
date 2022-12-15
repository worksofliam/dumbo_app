**free

ctl-opt dftactgrp(*no);

dcl-pi P580;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P205.rpgleinc'
/copy 'qrpgleref/P334.rpgleinc'

dcl-ds theTable extname('T1185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1185 LIMIT 1;

theCharVar = 'Hello from P580';
dsply theCharVar;
callp localProc();
P347();
P205();
P334();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P580 in the procedure';
end-proc;
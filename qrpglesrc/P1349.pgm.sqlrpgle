**free

ctl-opt dftactgrp(*no);

dcl-pi P1349;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P335.rpgleinc'
/copy 'qrpgleref/P1073.rpgleinc'
/copy 'qrpgleref/P866.rpgleinc'

dcl-ds theTable extname('T1185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1185 LIMIT 1;

theCharVar = 'Hello from P1349';
dsply theCharVar;
callp localProc();
P335();
P1073();
P866();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1349 in the procedure';
end-proc;
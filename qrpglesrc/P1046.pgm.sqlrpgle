**free

ctl-opt dftactgrp(*no);

dcl-pi P1046;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P405.rpgleinc'

dcl-ds theTable extname('T135') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T135 LIMIT 1;

theCharVar = 'Hello from P1046';
dsply theCharVar;
callp localProc();
P92();
P112();
P405();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1046 in the procedure';
end-proc;
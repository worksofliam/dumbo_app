**free

ctl-opt dftactgrp(*no);

dcl-pi P1005;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P218.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'
/copy 'qrpgleref/P112.rpgleinc'

dcl-ds theTable extname('T1140') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1140 LIMIT 1;

theCharVar = 'Hello from P1005';
dsply theCharVar;
callp localProc();
P218();
P497();
P112();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1005 in the procedure';
end-proc;
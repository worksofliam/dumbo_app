**free

ctl-opt dftactgrp(*no);

dcl-pi P218;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P109.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P61.rpgleinc'

dcl-ds theTable extname('T1002') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1002 LIMIT 1;

theCharVar = 'Hello from P218';
dsply theCharVar;
callp localProc();
P109();
P71();
P61();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P218 in the procedure';
end-proc;
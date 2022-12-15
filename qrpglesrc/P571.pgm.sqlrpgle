**free

ctl-opt dftactgrp(*no);

dcl-pi P571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P266.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P306.rpgleinc'

dcl-ds theTable extname('T335') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T335 LIMIT 1;

theCharVar = 'Hello from P571';
dsply theCharVar;
callp localProc();
P266();
P294();
P306();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P571 in the procedure';
end-proc;
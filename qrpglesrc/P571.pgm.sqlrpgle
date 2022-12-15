**free

ctl-opt dftactgrp(*no);

dcl-pi P571;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5.rpgleinc'
/copy 'qrpgleref/P359.rpgleinc'
/copy 'qrpgleref/P303.rpgleinc'

dcl-ds theTable extname('T82') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T82 LIMIT 1;

theCharVar = 'Hello from P571';
dsply theCharVar;
callp localProc();
P5();
P359();
P303();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P571 in the procedure';
end-proc;
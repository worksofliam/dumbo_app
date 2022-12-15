**free

ctl-opt dftactgrp(*no);

dcl-pi P1983;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P250.rpgleinc'
/copy 'qrpgleref/P626.rpgleinc'

dcl-ds theTable extname('T828') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T828 LIMIT 1;

theCharVar = 'Hello from P1983';
dsply theCharVar;
callp localProc();
P92();
P250();
P626();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1983 in the procedure';
end-proc;
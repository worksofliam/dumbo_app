**free

ctl-opt dftactgrp(*no);

dcl-pi P397;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P92.rpgleinc'
/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P245.rpgleinc'

dcl-ds theTable extname('T989') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T989 LIMIT 1;

theCharVar = 'Hello from P397';
dsply theCharVar;
callp localProc();
P92();
P124();
P245();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P397 in the procedure';
end-proc;
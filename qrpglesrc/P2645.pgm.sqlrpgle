**free

ctl-opt dftactgrp(*no);

dcl-pi P2645;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P1414.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'

dcl-ds theTable extname('T729') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T729 LIMIT 1;

theCharVar = 'Hello from P2645';
dsply theCharVar;
callp localProc();
P437();
P1414();
P410();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2645 in the procedure';
end-proc;
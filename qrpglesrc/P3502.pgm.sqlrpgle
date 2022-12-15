**free

ctl-opt dftactgrp(*no);

dcl-pi P3502;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1414.rpgleinc'
/copy 'qrpgleref/P1162.rpgleinc'
/copy 'qrpgleref/P2246.rpgleinc'

dcl-ds theTable extname('T839') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T839 LIMIT 1;

theCharVar = 'Hello from P3502';
dsply theCharVar;
callp localProc();
P1414();
P1162();
P2246();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3502 in the procedure';
end-proc;
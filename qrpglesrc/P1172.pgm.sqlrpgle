**free

ctl-opt dftactgrp(*no);

dcl-pi P1172;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P866.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P1102.rpgleinc'

dcl-ds theTable extname('T103') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T103 LIMIT 1;

theCharVar = 'Hello from P1172';
dsply theCharVar;
callp localProc();
P866();
P854();
P1102();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1172 in the procedure';
end-proc;
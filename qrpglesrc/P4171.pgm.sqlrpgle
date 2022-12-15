**free

ctl-opt dftactgrp(*no);

dcl-pi P4171;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1714.rpgleinc'
/copy 'qrpgleref/P3934.rpgleinc'
/copy 'qrpgleref/P1366.rpgleinc'

dcl-ds theTable extname('T1326') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1326 LIMIT 1;

theCharVar = 'Hello from P4171';
dsply theCharVar;
callp localProc();
P1714();
P3934();
P1366();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P4171 in the procedure';
end-proc;
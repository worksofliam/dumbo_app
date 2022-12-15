**free

ctl-opt dftactgrp(*no);

dcl-pi P3129;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1941.rpgleinc'
/copy 'qrpgleref/P613.rpgleinc'
/copy 'qrpgleref/P1853.rpgleinc'

dcl-ds theTable extname('T1001') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1001 LIMIT 1;

theCharVar = 'Hello from P3129';
dsply theCharVar;
callp localProc();
P1941();
P613();
P1853();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3129 in the procedure';
end-proc;
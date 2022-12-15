**free

ctl-opt dftactgrp(*no);

dcl-pi P3326;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P667.rpgleinc'
/copy 'qrpgleref/P3142.rpgleinc'
/copy 'qrpgleref/P1827.rpgleinc'

dcl-ds theTable extname('T167') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T167 LIMIT 1;

theCharVar = 'Hello from P3326';
dsply theCharVar;
callp localProc();
P667();
P3142();
P1827();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3326 in the procedure';
end-proc;
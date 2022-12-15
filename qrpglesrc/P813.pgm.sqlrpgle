**free

ctl-opt dftactgrp(*no);

dcl-pi P813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P228.rpgleinc'
/copy 'qrpgleref/P652.rpgleinc'
/copy 'qrpgleref/P370.rpgleinc'

dcl-ds theTable extname('T1012') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1012 LIMIT 1;

theCharVar = 'Hello from P813';
dsply theCharVar;
callp localProc();
P228();
P652();
P370();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P813 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1139;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P582.rpgleinc'
/copy 'qrpgleref/P816.rpgleinc'
/copy 'qrpgleref/P731.rpgleinc'

dcl-ds theTable extname('T64') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T64 LIMIT 1;

theCharVar = 'Hello from P1139';
dsply theCharVar;
callp localProc();
P582();
P816();
P731();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1139 in the procedure';
end-proc;
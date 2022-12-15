**free

ctl-opt dftactgrp(*no);

dcl-pi P118;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P89.rpgleinc'

dcl-ds theTable extname('T1353') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1353 LIMIT 1;

theCharVar = 'Hello from P118';
dsply theCharVar;
callp localProc();
P40();
P49();
P89();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P118 in the procedure';
end-proc;
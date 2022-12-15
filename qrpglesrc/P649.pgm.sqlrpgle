**free

ctl-opt dftactgrp(*no);

dcl-pi P649;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P339.rpgleinc'
/copy 'qrpgleref/P389.rpgleinc'

dcl-ds theTable extname('T1323') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1323 LIMIT 1;

theCharVar = 'Hello from P649';
dsply theCharVar;
callp localProc();
P181();
P339();
P389();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P649 in the procedure';
end-proc;
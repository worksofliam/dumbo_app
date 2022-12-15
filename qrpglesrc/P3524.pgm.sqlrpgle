**free

ctl-opt dftactgrp(*no);

dcl-pi P3524;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P181.rpgleinc'
/copy 'qrpgleref/P2621.rpgleinc'
/copy 'qrpgleref/P2144.rpgleinc'

dcl-ds theTable extname('T573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T573 LIMIT 1;

theCharVar = 'Hello from P3524';
dsply theCharVar;
callp localProc();
P181();
P2621();
P2144();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3524 in the procedure';
end-proc;
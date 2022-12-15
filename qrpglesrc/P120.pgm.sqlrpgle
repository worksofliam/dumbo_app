**free

ctl-opt dftactgrp(*no);

dcl-pi P120;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P117.rpgleinc'
/copy 'qrpgleref/P32.rpgleinc'
/copy 'qrpgleref/P24.rpgleinc'

dcl-ds theTable extname('T215') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T215 LIMIT 1;

theCharVar = 'Hello from P120';
dsply theCharVar;
callp localProc();
P117();
P32();
P24();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P120 in the procedure';
end-proc;
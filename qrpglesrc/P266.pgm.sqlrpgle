**free

ctl-opt dftactgrp(*no);

dcl-pi P266;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P0.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'
/copy 'qrpgleref/P181.rpgleinc'

dcl-ds theTable extname('T89') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T89 LIMIT 1;

theCharVar = 'Hello from P266';
dsply theCharVar;
callp localProc();
P0();
P195();
P181();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P266 in the procedure';
end-proc;
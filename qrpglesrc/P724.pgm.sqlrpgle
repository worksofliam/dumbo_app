**free

ctl-opt dftactgrp(*no);

dcl-pi P724;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P508.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P375.rpgleinc'

dcl-ds theTable extname('T870') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T870 LIMIT 1;

theCharVar = 'Hello from P724';
dsply theCharVar;
callp localProc();
P508();
P368();
P375();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P724 in the procedure';
end-proc;
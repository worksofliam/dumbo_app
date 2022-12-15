**free

ctl-opt dftactgrp(*no);

dcl-pi P862;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P287.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P281.rpgleinc'

dcl-ds theTable extname('T480') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T480 LIMIT 1;

theCharVar = 'Hello from P862';
dsply theCharVar;
callp localProc();
P287();
P669();
P281();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P862 in the procedure';
end-proc;
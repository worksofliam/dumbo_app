**free

ctl-opt dftactgrp(*no);

dcl-pi P3089;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P724.rpgleinc'
/copy 'qrpgleref/P2053.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'

dcl-ds theTable extname('T949') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T949 LIMIT 1;

theCharVar = 'Hello from P3089';
dsply theCharVar;
callp localProc();
P724();
P2053();
P123();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3089 in the procedure';
end-proc;
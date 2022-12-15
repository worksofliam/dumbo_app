**free

ctl-opt dftactgrp(*no);

dcl-pi P1070;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P445.rpgleinc'
/copy 'qrpgleref/P516.rpgleinc'

dcl-ds theTable extname('T573') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T573 LIMIT 1;

theCharVar = 'Hello from P1070';
dsply theCharVar;
callp localProc();
P640();
P445();
P516();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1070 in the procedure';
end-proc;
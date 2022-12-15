**free

ctl-opt dftactgrp(*no);

dcl-pi P811;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P640.rpgleinc'
/copy 'qrpgleref/P684.rpgleinc'
/copy 'qrpgleref/P249.rpgleinc'

dcl-ds theTable extname('T681') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T681 LIMIT 1;

theCharVar = 'Hello from P811';
dsply theCharVar;
callp localProc();
P640();
P684();
P249();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P811 in the procedure';
end-proc;
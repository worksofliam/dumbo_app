**free

ctl-opt dftactgrp(*no);

dcl-pi P306;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P112.rpgleinc'
/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P22.rpgleinc'

dcl-ds theTable extname('T663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T663 LIMIT 1;

theCharVar = 'Hello from P306';
dsply theCharVar;
callp localProc();
P112();
P10();
P22();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P306 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P509;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P283.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P308.rpgleinc'

dcl-ds theTable extname('T7') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T7 LIMIT 1;

theCharVar = 'Hello from P509';
dsply theCharVar;
callp localProc();
P283();
P44();
P308();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P509 in the procedure';
end-proc;
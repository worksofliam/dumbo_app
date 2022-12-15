**free

ctl-opt dftactgrp(*no);

dcl-pi P631;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P10.rpgleinc'
/copy 'qrpgleref/P146.rpgleinc'
/copy 'qrpgleref/P164.rpgleinc'

dcl-ds theTable extname('T221') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T221 LIMIT 1;

theCharVar = 'Hello from P631';
dsply theCharVar;
callp localProc();
P10();
P146();
P164();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P631 in the procedure';
end-proc;
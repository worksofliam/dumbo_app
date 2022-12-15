**free

ctl-opt dftactgrp(*no);

dcl-pi P346;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P22.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'
/copy 'qrpgleref/P55.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P346';
dsply theCharVar;
callp localProc();
P22();
P73();
P55();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P346 in the procedure';
end-proc;
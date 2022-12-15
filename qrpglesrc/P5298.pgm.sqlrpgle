**free

ctl-opt dftactgrp(*no);

dcl-pi P5298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P5278.rpgleinc'
/copy 'qrpgleref/P4312.rpgleinc'
/copy 'qrpgleref/P1237.rpgleinc'

dcl-ds theTable extname('T975') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T975 LIMIT 1;

theCharVar = 'Hello from P5298';
dsply theCharVar;
callp localProc();
P5278();
P4312();
P1237();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P5298 in the procedure';
end-proc;
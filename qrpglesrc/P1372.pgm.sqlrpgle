**free

ctl-opt dftactgrp(*no);

dcl-pi P1372;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P223.rpgleinc'
/copy 'qrpgleref/P1348.rpgleinc'
/copy 'qrpgleref/P1312.rpgleinc'

dcl-ds theTable extname('T627') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T627 LIMIT 1;

theCharVar = 'Hello from P1372';
dsply theCharVar;
callp localProc();
P223();
P1348();
P1312();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1372 in the procedure';
end-proc;
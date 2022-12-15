**free

ctl-opt dftactgrp(*no);

dcl-pi P44;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P12.rpgleinc'
/copy 'qrpgleref/P41.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P44';
dsply theCharVar;
callp localProc();
P12();
P41();
P29();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P44 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P165.rpgleinc'
/copy 'qrpgleref/P44.rpgleinc'
/copy 'qrpgleref/P224.rpgleinc'

dcl-ds theTable extname('T77') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T77 LIMIT 1;

theCharVar = 'Hello from P299';
dsply theCharVar;
callp localProc();
P165();
P44();
P224();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P299 in the procedure';
end-proc;
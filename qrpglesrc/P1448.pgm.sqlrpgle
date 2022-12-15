**free

ctl-opt dftactgrp(*no);

dcl-pi P1448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P160.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P1221.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P1448';
dsply theCharVar;
callp localProc();
P160();
P770();
P1221();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1448 in the procedure';
end-proc;
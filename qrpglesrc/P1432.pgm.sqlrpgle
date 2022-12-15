**free

ctl-opt dftactgrp(*no);

dcl-pi P1432;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P855.rpgleinc'
/copy 'qrpgleref/P406.rpgleinc'
/copy 'qrpgleref/P921.rpgleinc'

dcl-ds theTable extname('T30') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T30 LIMIT 1;

theCharVar = 'Hello from P1432';
dsply theCharVar;
callp localProc();
P855();
P406();
P921();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1432 in the procedure';
end-proc;
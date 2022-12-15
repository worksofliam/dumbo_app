**free

ctl-opt dftactgrp(*no);

dcl-pi P1382;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P533.rpgleinc'
/copy 'qrpgleref/P1024.rpgleinc'
/copy 'qrpgleref/P945.rpgleinc'

dcl-ds theTable extname('T402') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T402 LIMIT 1;

theCharVar = 'Hello from P1382';
dsply theCharVar;
callp localProc();
P533();
P1024();
P945();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1382 in the procedure';
end-proc;
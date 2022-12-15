**free

ctl-opt dftactgrp(*no);

dcl-pi P2137;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P1813.rpgleinc'
/copy 'qrpgleref/P1937.rpgleinc'

dcl-ds theTable extname('T536') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T536 LIMIT 1;

theCharVar = 'Hello from P2137';
dsply theCharVar;
callp localProc();
P677();
P1813();
P1937();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2137 in the procedure';
end-proc;
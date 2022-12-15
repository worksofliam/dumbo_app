**free

ctl-opt dftactgrp(*no);

dcl-pi P2530;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2036.rpgleinc'
/copy 'qrpgleref/P2373.rpgleinc'
/copy 'qrpgleref/P1648.rpgleinc'

dcl-ds theTable extname('T537') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T537 LIMIT 1;

theCharVar = 'Hello from P2530';
dsply theCharVar;
callp localProc();
P2036();
P2373();
P1648();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2530 in the procedure';
end-proc;
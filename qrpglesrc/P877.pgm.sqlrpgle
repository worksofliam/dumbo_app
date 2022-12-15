**free

ctl-opt dftactgrp(*no);

dcl-pi P877;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P836.rpgleinc'

dcl-ds theTable extname('T281') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T281 LIMIT 1;

theCharVar = 'Hello from P877';
dsply theCharVar;
callp localProc();
P509();
P33();
P836();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P877 in the procedure';
end-proc;
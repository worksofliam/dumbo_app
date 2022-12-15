**free

ctl-opt dftactgrp(*no);

dcl-pi P2278;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1436.rpgleinc'
/copy 'qrpgleref/P154.rpgleinc'
/copy 'qrpgleref/P965.rpgleinc'

dcl-ds theTable extname('T283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T283 LIMIT 1;

theCharVar = 'Hello from P2278';
dsply theCharVar;
callp localProc();
P1436();
P154();
P965();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2278 in the procedure';
end-proc;
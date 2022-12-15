**free

ctl-opt dftactgrp(*no);

dcl-pi P2411;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2335.rpgleinc'
/copy 'qrpgleref/P806.rpgleinc'
/copy 'qrpgleref/P2285.rpgleinc'

dcl-ds theTable extname('T283') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T283 LIMIT 1;

theCharVar = 'Hello from P2411';
dsply theCharVar;
callp localProc();
P2335();
P806();
P2285();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2411 in the procedure';
end-proc;
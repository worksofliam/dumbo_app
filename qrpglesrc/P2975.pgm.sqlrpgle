**free

ctl-opt dftactgrp(*no);

dcl-pi P2975;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2051.rpgleinc'
/copy 'qrpgleref/P2126.rpgleinc'
/copy 'qrpgleref/P2053.rpgleinc'

dcl-ds theTable extname('T225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T225 LIMIT 1;

theCharVar = 'Hello from P2975';
dsply theCharVar;
callp localProc();
P2051();
P2126();
P2053();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2975 in the procedure';
end-proc;
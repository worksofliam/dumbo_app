**free

ctl-opt dftactgrp(*no);

dcl-pi P2165;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P1789.rpgleinc'
/copy 'qrpgleref/P565.rpgleinc'

dcl-ds theTable extname('T963') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T963 LIMIT 1;

theCharVar = 'Hello from P2165';
dsply theCharVar;
callp localProc();
P291();
P1789();
P565();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2165 in the procedure';
end-proc;
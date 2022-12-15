**free

ctl-opt dftactgrp(*no);

dcl-pi P1422;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1369.rpgleinc'
/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P326.rpgleinc'

dcl-ds theTable extname('T62') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T62 LIMIT 1;

theCharVar = 'Hello from P1422';
dsply theCharVar;
callp localProc();
P1369();
P291();
P326();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1422 in the procedure';
end-proc;
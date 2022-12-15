**free

ctl-opt dftactgrp(*no);

dcl-pi P597;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'

dcl-ds theTable extname('T50') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T50 LIMIT 1;

theCharVar = 'Hello from P597';
dsply theCharVar;
callp localProc();
P291();
P13();
P586();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P597 in the procedure';
end-proc;
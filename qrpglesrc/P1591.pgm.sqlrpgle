**free

ctl-opt dftactgrp(*no);

dcl-pi P1591;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P291.rpgleinc'
/copy 'qrpgleref/P1001.rpgleinc'
/copy 'qrpgleref/P266.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P1591';
dsply theCharVar;
callp localProc();
P291();
P1001();
P266();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1591 in the procedure';
end-proc;
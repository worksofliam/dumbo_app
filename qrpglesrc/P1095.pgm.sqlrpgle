**free

ctl-opt dftactgrp(*no);

dcl-pi P1095;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P569.rpgleinc'
/copy 'qrpgleref/P522.rpgleinc'

dcl-ds theTable extname('T192') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T192 LIMIT 1;

theCharVar = 'Hello from P1095';
dsply theCharVar;
callp localProc();
P121();
P569();
P522();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1095 in the procedure';
end-proc;
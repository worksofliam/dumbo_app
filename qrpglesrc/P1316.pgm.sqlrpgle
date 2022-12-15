**free

ctl-opt dftactgrp(*no);

dcl-pi P1316;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P897.rpgleinc'
/copy 'qrpgleref/P294.rpgleinc'
/copy 'qrpgleref/P185.rpgleinc'

dcl-ds theTable extname('T1284') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1284 LIMIT 1;

theCharVar = 'Hello from P1316';
dsply theCharVar;
callp localProc();
P897();
P294();
P185();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1316 in the procedure';
end-proc;
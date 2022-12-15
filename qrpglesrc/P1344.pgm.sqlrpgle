**free

ctl-opt dftactgrp(*no);

dcl-pi P1344;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P641.rpgleinc'
/copy 'qrpgleref/P1329.rpgleinc'
/copy 'qrpgleref/P1200.rpgleinc'

dcl-ds theTable extname('T821') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T821 LIMIT 1;

theCharVar = 'Hello from P1344';
dsply theCharVar;
callp localProc();
P641();
P1329();
P1200();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1344 in the procedure';
end-proc;
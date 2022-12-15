**free

ctl-opt dftactgrp(*no);

dcl-pi P448;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P17.rpgleinc'
/copy 'qrpgleref/P51.rpgleinc'
/copy 'qrpgleref/P289.rpgleinc'

dcl-ds theTable extname('T1332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1332 LIMIT 1;

theCharVar = 'Hello from P448';
dsply theCharVar;
callp localProc();
P17();
P51();
P289();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P448 in the procedure';
end-proc;
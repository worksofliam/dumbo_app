**free

ctl-opt dftactgrp(*no);

dcl-pi P2141;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1387.rpgleinc'
/copy 'qrpgleref/P102.rpgleinc'
/copy 'qrpgleref/P315.rpgleinc'

dcl-ds theTable extname('T245') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T245 LIMIT 1;

theCharVar = 'Hello from P2141';
dsply theCharVar;
callp localProc();
P1387();
P102();
P315();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2141 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1289;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P957.rpgleinc'
/copy 'qrpgleref/P362.rpgleinc'
/copy 'qrpgleref/P866.rpgleinc'

dcl-ds theTable extname('T1225') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1225 LIMIT 1;

theCharVar = 'Hello from P1289';
dsply theCharVar;
callp localProc();
P957();
P362();
P866();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P1289 in the procedure';
end-proc;
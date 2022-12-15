**free

ctl-opt dftactgrp(*no);

dcl-pi P3267;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1968.rpgleinc'
/copy 'qrpgleref/P1223.rpgleinc'
/copy 'qrpgleref/P2358.rpgleinc'

dcl-ds theTable extname('T1805') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1805 LIMIT 1;

theCharVar = 'Hello from P3267';
dsply theCharVar;
callp localProc();
P1968();
P1223();
P2358();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P3267 in the procedure';
end-proc;
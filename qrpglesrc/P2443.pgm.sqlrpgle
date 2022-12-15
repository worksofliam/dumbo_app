**free

ctl-opt dftactgrp(*no);

dcl-pi P2443;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1861.rpgleinc'
/copy 'qrpgleref/P1802.rpgleinc'
/copy 'qrpgleref/P1828.rpgleinc'

dcl-ds theTable extname('T1448') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1448 LIMIT 1;

theCharVar = 'Hello from P2443';
dsply theCharVar;
callp localProc();
P1861();
P1802();
P1828();
return;
dcl-proc localProc;
  theCharVar = 'Hello from P2443 in the procedure';
end-proc;
**free

ctl-opt dftactgrp(*no);

dcl-pi P3707;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P505.rpgleinc'
/copy 'qrpgleref/P518.rpgleinc'
/copy 'qrpgleref/P2220.rpgleinc'

dcl-ds theTable extname('T499') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T499 LIMIT 1;

theCharVar = 'Hello from P3707';
dsply theCharVar;
P505();
P518();
P2220();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P4429;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1910.rpgleinc'
/copy 'qrpgleref/P1428.rpgleinc'
/copy 'qrpgleref/P2085.rpgleinc'

dcl-ds theTable extname('T736') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T736 LIMIT 1;

theCharVar = 'Hello from P4429';
dsply theCharVar;
P1910();
P1428();
P2085();
return;
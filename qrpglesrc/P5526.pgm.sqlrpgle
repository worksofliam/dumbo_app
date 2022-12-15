**free

ctl-opt dftactgrp(*no);

dcl-pi P5526;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P428.rpgleinc'
/copy 'qrpgleref/P4661.rpgleinc'
/copy 'qrpgleref/P1385.rpgleinc'

dcl-ds theTable extname('T922') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T922 LIMIT 1;

theCharVar = 'Hello from P5526';
dsply theCharVar;
P428();
P4661();
P1385();
return;
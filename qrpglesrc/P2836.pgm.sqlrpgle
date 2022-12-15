**free

ctl-opt dftactgrp(*no);

dcl-pi P2836;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2781.rpgleinc'
/copy 'qrpgleref/P2620.rpgleinc'
/copy 'qrpgleref/P2771.rpgleinc'

dcl-ds theTable extname('T1677') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1677 LIMIT 1;

theCharVar = 'Hello from P2836';
dsply theCharVar;
P2781();
P2620();
P2771();
return;
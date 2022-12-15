**free

ctl-opt dftactgrp(*no);

dcl-pi P2795;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P461.rpgleinc'
/copy 'qrpgleref/P1469.rpgleinc'
/copy 'qrpgleref/P756.rpgleinc'

dcl-ds theTable extname('T172') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T172 LIMIT 1;

theCharVar = 'Hello from P2795';
dsply theCharVar;
P461();
P1469();
P756();
return;
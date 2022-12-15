**free

ctl-opt dftactgrp(*no);

dcl-pi P700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P338.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'

dcl-ds theTable extname('T124') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T124 LIMIT 1;

theCharVar = 'Hello from P700';
dsply theCharVar;
P229();
P338();
P612();
return;
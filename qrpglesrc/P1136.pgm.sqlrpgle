**free

ctl-opt dftactgrp(*no);

dcl-pi P1136;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'
/copy 'qrpgleref/P411.rpgleinc'

dcl-ds theTable extname('T126') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T126 LIMIT 1;

theCharVar = 'Hello from P1136';
dsply theCharVar;
P159();
P387();
P411();
return;
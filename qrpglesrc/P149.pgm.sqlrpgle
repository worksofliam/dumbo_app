**free

ctl-opt dftactgrp(*no);

dcl-pi P149;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P115.rpgleinc'
/copy 'qrpgleref/P30.rpgleinc'
/copy 'qrpgleref/P74.rpgleinc'

dcl-ds theTable extname('T132') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T132 LIMIT 1;

theCharVar = 'Hello from P149';
dsply theCharVar;
P115();
P30();
P74();
return;
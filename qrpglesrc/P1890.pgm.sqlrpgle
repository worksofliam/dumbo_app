**free

ctl-opt dftactgrp(*no);

dcl-pi P1890;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P483.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P1680.rpgleinc'

dcl-ds theTable extname('T438') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T438 LIMIT 1;

theCharVar = 'Hello from P1890';
dsply theCharVar;
P483();
P31();
P1680();
return;
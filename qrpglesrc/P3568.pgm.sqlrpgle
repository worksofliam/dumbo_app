**free

ctl-opt dftactgrp(*no);

dcl-pi P3568;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2377.rpgleinc'
/copy 'qrpgleref/P3276.rpgleinc'
/copy 'qrpgleref/P288.rpgleinc'

dcl-ds theTable extname('T454') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T454 LIMIT 1;

theCharVar = 'Hello from P3568';
dsply theCharVar;
P2377();
P3276();
P288();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1949;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P939.rpgleinc'
/copy 'qrpgleref/P1924.rpgleinc'
/copy 'qrpgleref/P1434.rpgleinc'

dcl-ds theTable extname('T185') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T185 LIMIT 1;

theCharVar = 'Hello from P1949';
dsply theCharVar;
P939();
P1924();
P1434();
return;
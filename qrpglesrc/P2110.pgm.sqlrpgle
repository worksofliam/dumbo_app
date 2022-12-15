**free

ctl-opt dftactgrp(*no);

dcl-pi P2110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1813.rpgleinc'
/copy 'qrpgleref/P1482.rpgleinc'
/copy 'qrpgleref/P939.rpgleinc'

dcl-ds theTable extname('T497') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T497 LIMIT 1;

theCharVar = 'Hello from P2110';
dsply theCharVar;
P1813();
P1482();
P939();
return;
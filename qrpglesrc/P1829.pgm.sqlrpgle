**free

ctl-opt dftactgrp(*no);

dcl-pi P1829;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P677.rpgleinc'
/copy 'qrpgleref/P417.rpgleinc'
/copy 'qrpgleref/P689.rpgleinc'

dcl-ds theTable extname('T649') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T649 LIMIT 1;

theCharVar = 'Hello from P1829';
dsply theCharVar;
P677();
P417();
P689();
return;
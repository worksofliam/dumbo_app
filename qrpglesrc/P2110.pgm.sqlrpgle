**free

ctl-opt dftactgrp(*no);

dcl-pi P2110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2106.rpgleinc'
/copy 'qrpgleref/P1442.rpgleinc'
/copy 'qrpgleref/P199.rpgleinc'

dcl-ds theTable extname('T211') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T211 LIMIT 1;

theCharVar = 'Hello from P2110';
dsply theCharVar;
P2106();
P1442();
P199();
return;
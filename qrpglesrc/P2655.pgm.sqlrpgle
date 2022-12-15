**free

ctl-opt dftactgrp(*no);

dcl-pi P2655;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1744.rpgleinc'
/copy 'qrpgleref/P2493.rpgleinc'
/copy 'qrpgleref/P381.rpgleinc'

dcl-ds theTable extname('T1659') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1659 LIMIT 1;

theCharVar = 'Hello from P2655';
dsply theCharVar;
P1744();
P2493();
P381();
return;
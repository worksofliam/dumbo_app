**free

ctl-opt dftactgrp(*no);

dcl-pi P2934;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P14.rpgleinc'
/copy 'qrpgleref/P2236.rpgleinc'
/copy 'qrpgleref/P2160.rpgleinc'

dcl-ds theTable extname('T433') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T433 LIMIT 1;

theCharVar = 'Hello from P2934';
dsply theCharVar;
P14();
P2236();
P2160();
return;
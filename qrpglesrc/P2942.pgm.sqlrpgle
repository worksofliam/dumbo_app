**free

ctl-opt dftactgrp(*no);

dcl-pi P2942;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P397.rpgleinc'
/copy 'qrpgleref/P2287.rpgleinc'
/copy 'qrpgleref/P1387.rpgleinc'

dcl-ds theTable extname('T674') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T674 LIMIT 1;

theCharVar = 'Hello from P2942';
dsply theCharVar;
P397();
P2287();
P1387();
return;
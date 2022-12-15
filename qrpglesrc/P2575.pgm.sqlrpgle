**free

ctl-opt dftactgrp(*no);

dcl-pi P2575;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2287.rpgleinc'
/copy 'qrpgleref/P616.rpgleinc'
/copy 'qrpgleref/P2200.rpgleinc'

dcl-ds theTable extname('T1483') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1483 LIMIT 1;

theCharVar = 'Hello from P2575';
dsply theCharVar;
P2287();
P616();
P2200();
return;
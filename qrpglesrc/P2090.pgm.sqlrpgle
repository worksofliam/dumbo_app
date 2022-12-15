**free

ctl-opt dftactgrp(*no);

dcl-pi P2090;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1337.rpgleinc'
/copy 'qrpgleref/P1586.rpgleinc'
/copy 'qrpgleref/P287.rpgleinc'

dcl-ds theTable extname('T174') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T174 LIMIT 1;

theCharVar = 'Hello from P2090';
dsply theCharVar;
P1337();
P1586();
P287();
return;
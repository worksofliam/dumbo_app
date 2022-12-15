**free

ctl-opt dftactgrp(*no);

dcl-pi P3622;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3557.rpgleinc'
/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P2940.rpgleinc'

dcl-ds theTable extname('T899') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T899 LIMIT 1;

theCharVar = 'Hello from P3622';
dsply theCharVar;
P3557();
P1919();
P2940();
return;
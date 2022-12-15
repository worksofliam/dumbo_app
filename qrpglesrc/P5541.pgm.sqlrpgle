**free

ctl-opt dftactgrp(*no);

dcl-pi P5541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P989.rpgleinc'
/copy 'qrpgleref/P1493.rpgleinc'
/copy 'qrpgleref/P241.rpgleinc'

dcl-ds theTable extname('T613') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T613 LIMIT 1;

theCharVar = 'Hello from P5541';
dsply theCharVar;
P989();
P1493();
P241();
return;
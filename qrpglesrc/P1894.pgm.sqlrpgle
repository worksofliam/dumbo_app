**free

ctl-opt dftactgrp(*no);

dcl-pi P1894;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P701.rpgleinc'
/copy 'qrpgleref/P410.rpgleinc'
/copy 'qrpgleref/P1857.rpgleinc'

dcl-ds theTable extname('T145') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T145 LIMIT 1;

theCharVar = 'Hello from P1894';
dsply theCharVar;
P701();
P410();
P1857();
return;
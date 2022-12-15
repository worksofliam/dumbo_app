**free

ctl-opt dftactgrp(*no);

dcl-pi P1493;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P472.rpgleinc'
/copy 'qrpgleref/P150.rpgleinc'
/copy 'qrpgleref/P1135.rpgleinc'

dcl-ds theTable extname('T633') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T633 LIMIT 1;

theCharVar = 'Hello from P1493';
dsply theCharVar;
P472();
P150();
P1135();
return;
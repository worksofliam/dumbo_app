**free

ctl-opt dftactgrp(*no);

dcl-pi P864;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P176.rpgleinc'
/copy 'qrpgleref/P525.rpgleinc'
/copy 'qrpgleref/P131.rpgleinc'

dcl-ds theTable extname('T853') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T853 LIMIT 1;

theCharVar = 'Hello from P864';
dsply theCharVar;
P176();
P525();
P131();
return;
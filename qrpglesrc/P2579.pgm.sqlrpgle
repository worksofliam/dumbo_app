**free

ctl-opt dftactgrp(*no);

dcl-pi P2579;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P52.rpgleinc'
/copy 'qrpgleref/P2307.rpgleinc'
/copy 'qrpgleref/P1079.rpgleinc'

dcl-ds theTable extname('T424') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T424 LIMIT 1;

theCharVar = 'Hello from P2579';
dsply theCharVar;
P52();
P2307();
P1079();
return;
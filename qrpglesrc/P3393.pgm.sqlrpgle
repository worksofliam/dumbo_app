**free

ctl-opt dftactgrp(*no);

dcl-pi P3393;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3087.rpgleinc'
/copy 'qrpgleref/P2118.rpgleinc'
/copy 'qrpgleref/P2579.rpgleinc'

dcl-ds theTable extname('T1168') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1168 LIMIT 1;

theCharVar = 'Hello from P3393';
dsply theCharVar;
P3087();
P2118();
P2579();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P919;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P368.rpgleinc'
/copy 'qrpgleref/P604.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'

dcl-ds theTable extname('T439') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T439 LIMIT 1;

theCharVar = 'Hello from P919';
dsply theCharVar;
P368();
P604();
P228();
return;
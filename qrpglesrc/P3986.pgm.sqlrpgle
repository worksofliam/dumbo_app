**free

ctl-opt dftactgrp(*no);

dcl-pi P3986;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P691.rpgleinc'
/copy 'qrpgleref/P2537.rpgleinc'
/copy 'qrpgleref/P3650.rpgleinc'

dcl-ds theTable extname('T42') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T42 LIMIT 1;

theCharVar = 'Hello from P3986';
dsply theCharVar;
P691();
P2537();
P3650();
return;
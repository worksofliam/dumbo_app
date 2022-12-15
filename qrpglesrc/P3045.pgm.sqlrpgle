**free

ctl-opt dftactgrp(*no);

dcl-pi P3045;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2993.rpgleinc'
/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'

dcl-ds theTable extname('T851') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T851 LIMIT 1;

theCharVar = 'Hello from P3045';
dsply theCharVar;
P2993();
P31();
P215();
return;
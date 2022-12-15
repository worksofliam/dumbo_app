**free

ctl-opt dftactgrp(*no);

dcl-pi P932;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P797.rpgleinc'
/copy 'qrpgleref/P259.rpgleinc'
/copy 'qrpgleref/P520.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P932';
dsply theCharVar;
P797();
P259();
P520();
return;
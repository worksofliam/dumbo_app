**free

ctl-opt dftactgrp(*no);

dcl-pi P3775;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1394.rpgleinc'
/copy 'qrpgleref/P1294.rpgleinc'
/copy 'qrpgleref/P1749.rpgleinc'

dcl-ds theTable extname('T529') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T529 LIMIT 1;

theCharVar = 'Hello from P3775';
dsply theCharVar;
P1394();
P1294();
P1749();
return;
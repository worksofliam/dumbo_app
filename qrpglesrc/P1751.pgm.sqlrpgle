**free

ctl-opt dftactgrp(*no);

dcl-pi P1751;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P121.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P1733.rpgleinc'

dcl-ds theTable extname('T498') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T498 LIMIT 1;

theCharVar = 'Hello from P1751';
dsply theCharVar;
P121();
P586();
P1733();
return;
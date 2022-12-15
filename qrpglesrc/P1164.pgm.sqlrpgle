**free

ctl-opt dftactgrp(*no);

dcl-pi P1164;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P498.rpgleinc'
/copy 'qrpgleref/P862.rpgleinc'

dcl-ds theTable extname('T738') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T738 LIMIT 1;

theCharVar = 'Hello from P1164';
dsply theCharVar;
P211();
P498();
P862();
return;
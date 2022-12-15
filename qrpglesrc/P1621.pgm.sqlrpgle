**free

ctl-opt dftactgrp(*no);

dcl-pi P1621;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P211.rpgleinc'
/copy 'qrpgleref/P1304.rpgleinc'
/copy 'qrpgleref/P1176.rpgleinc'

dcl-ds theTable extname('T858') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T858 LIMIT 1;

theCharVar = 'Hello from P1621';
dsply theCharVar;
P211();
P1304();
P1176();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1700;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1590.rpgleinc'
/copy 'qrpgleref/P864.rpgleinc'
/copy 'qrpgleref/P1199.rpgleinc'

dcl-ds theTable extname('T445') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T445 LIMIT 1;

theCharVar = 'Hello from P1700';
dsply theCharVar;
P1590();
P864();
P1199();
return;
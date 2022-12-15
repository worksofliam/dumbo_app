**free

ctl-opt dftactgrp(*no);

dcl-pi P3184;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1590.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P2502.rpgleinc'

dcl-ds theTable extname('T83') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T83 LIMIT 1;

theCharVar = 'Hello from P3184';
dsply theCharVar;
P1590();
P319();
P2502();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P2994;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1770.rpgleinc'
/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P2749.rpgleinc'

dcl-ds theTable extname('T855') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T855 LIMIT 1;

theCharVar = 'Hello from P2994';
dsply theCharVar;
P1770();
P319();
P2749();
return;
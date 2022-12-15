**free

ctl-opt dftactgrp(*no);

dcl-pi P2578;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2214.rpgleinc'
/copy 'qrpgleref/P1650.rpgleinc'
/copy 'qrpgleref/P924.rpgleinc'

dcl-ds theTable extname('T722') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T722 LIMIT 1;

theCharVar = 'Hello from P2578';
dsply theCharVar;
P2214();
P1650();
P924();
return;
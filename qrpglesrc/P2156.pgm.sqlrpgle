**free

ctl-opt dftactgrp(*no);

dcl-pi P2156;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P924.rpgleinc'
/copy 'qrpgleref/P839.rpgleinc'
/copy 'qrpgleref/P209.rpgleinc'

dcl-ds theTable extname('T43') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T43 LIMIT 1;

theCharVar = 'Hello from P2156';
dsply theCharVar;
P924();
P839();
P209();
return;
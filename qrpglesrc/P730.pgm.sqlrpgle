**free

ctl-opt dftactgrp(*no);

dcl-pi P730;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P507.rpgleinc'
/copy 'qrpgleref/P477.rpgleinc'
/copy 'qrpgleref/P71.rpgleinc'

dcl-ds theTable extname('T169') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T169 LIMIT 1;

theCharVar = 'Hello from P730';
dsply theCharVar;
P507();
P477();
P71();
return;
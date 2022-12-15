**free

ctl-opt dftactgrp(*no);

dcl-pi P3035;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1798.rpgleinc'
/copy 'qrpgleref/P366.rpgleinc'
/copy 'qrpgleref/P732.rpgleinc'

dcl-ds theTable extname('T255') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T255 LIMIT 1;

theCharVar = 'Hello from P3035';
dsply theCharVar;
P1798();
P366();
P732();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P807;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P770.rpgleinc'
/copy 'qrpgleref/P37.rpgleinc'

dcl-ds theTable extname('T122') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T122 LIMIT 1;

theCharVar = 'Hello from P807';
dsply theCharVar;
P612();
P770();
P37();
return;
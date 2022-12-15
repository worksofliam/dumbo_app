**free

ctl-opt dftactgrp(*no);

dcl-pi P773;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P225.rpgleinc'
/copy 'qrpgleref/P612.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'

dcl-ds theTable extname('T1213') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1213 LIMIT 1;

theCharVar = 'Hello from P773';
dsply theCharVar;
P225();
P612();
P755();
return;
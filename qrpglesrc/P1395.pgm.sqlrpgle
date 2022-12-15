**free

ctl-opt dftactgrp(*no);

dcl-pi P1395;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P38.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'
/copy 'qrpgleref/P447.rpgleinc'

dcl-ds theTable extname('T450') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T450 LIMIT 1;

theCharVar = 'Hello from P1395';
dsply theCharVar;
P38();
P63();
P447();
return;
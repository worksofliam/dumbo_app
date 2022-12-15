**free

ctl-opt dftactgrp(*no);

dcl-pi P1299;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1030.rpgleinc'
/copy 'qrpgleref/P809.rpgleinc'
/copy 'qrpgleref/P1106.rpgleinc'

dcl-ds theTable extname('T542') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T542 LIMIT 1;

theCharVar = 'Hello from P1299';
dsply theCharVar;
P1030();
P809();
P1106();
return;
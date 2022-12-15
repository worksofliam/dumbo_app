**free

ctl-opt dftactgrp(*no);

dcl-pi P5110;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2987.rpgleinc'
/copy 'qrpgleref/P3696.rpgleinc'
/copy 'qrpgleref/P3952.rpgleinc'

dcl-ds theTable extname('T663') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T663 LIMIT 1;

theCharVar = 'Hello from P5110';
dsply theCharVar;
P2987();
P3696();
P3952();
return;
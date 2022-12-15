**free

ctl-opt dftactgrp(*no);

dcl-pi P5362;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P819.rpgleinc'
/copy 'qrpgleref/P661.rpgleinc'
/copy 'qrpgleref/P3899.rpgleinc'

dcl-ds theTable extname('T1712') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1712 LIMIT 1;

theCharVar = 'Hello from P5362';
dsply theCharVar;
P819();
P661();
P3899();
return;
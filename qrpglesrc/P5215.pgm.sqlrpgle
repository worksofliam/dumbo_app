**free

ctl-opt dftactgrp(*no);

dcl-pi P5215;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3843.rpgleinc'
/copy 'qrpgleref/P3668.rpgleinc'
/copy 'qrpgleref/P3690.rpgleinc'

dcl-ds theTable extname('T1411') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1411 LIMIT 1;

theCharVar = 'Hello from P5215';
dsply theCharVar;
P3843();
P3668();
P3690();
return;
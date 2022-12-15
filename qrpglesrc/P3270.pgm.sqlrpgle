**free

ctl-opt dftactgrp(*no);

dcl-pi P3270;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2875.rpgleinc'
/copy 'qrpgleref/P1527.rpgleinc'
/copy 'qrpgleref/P2022.rpgleinc'

dcl-ds theTable extname('T314') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T314 LIMIT 1;

theCharVar = 'Hello from P3270';
dsply theCharVar;
P2875();
P1527();
P2022();
return;
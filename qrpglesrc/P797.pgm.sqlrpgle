**free

ctl-opt dftactgrp(*no);

dcl-pi P797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P638.rpgleinc'
/copy 'qrpgleref/P409.rpgleinc'
/copy 'qrpgleref/P600.rpgleinc'

dcl-ds theTable extname('T979') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T979 LIMIT 1;

theCharVar = 'Hello from P797';
dsply theCharVar;
P638();
P409();
P600();
return;
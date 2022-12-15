**free

ctl-opt dftactgrp(*no);

dcl-pi P797;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P501.rpgleinc'
/copy 'qrpgleref/P354.rpgleinc'
/copy 'qrpgleref/P387.rpgleinc'

dcl-ds theTable extname('T343') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T343 LIMIT 1;

theCharVar = 'Hello from P797';
dsply theCharVar;
P501();
P354();
P387();
return;
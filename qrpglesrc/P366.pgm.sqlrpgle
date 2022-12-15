**free

ctl-opt dftactgrp(*no);

dcl-pi P366;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P141.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P128.rpgleinc'

dcl-ds theTable extname('T306') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T306 LIMIT 1;

theCharVar = 'Hello from P366';
dsply theCharVar;
P141();
P7();
P128();
return;
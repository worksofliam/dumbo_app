**free

ctl-opt dftactgrp(*no);

dcl-pi P541;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P40.rpgleinc'
/copy 'qrpgleref/P349.rpgleinc'
/copy 'qrpgleref/P15.rpgleinc'

dcl-ds theTable extname('T478') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T478 LIMIT 1;

theCharVar = 'Hello from P541';
dsply theCharVar;
P40();
P349();
P15();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1310;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P222.rpgleinc'
/copy 'qrpgleref/P53.rpgleinc'
/copy 'qrpgleref/P1199.rpgleinc'

dcl-ds theTable extname('T687') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T687 LIMIT 1;

theCharVar = 'Hello from P1310';
dsply theCharVar;
P222();
P53();
P1199();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P731;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P689.rpgleinc'
/copy 'qrpgleref/P229.rpgleinc'
/copy 'qrpgleref/P178.rpgleinc'

dcl-ds theTable extname('T1104') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1104 LIMIT 1;

theCharVar = 'Hello from P731';
dsply theCharVar;
P689();
P229();
P178();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P950;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P732.rpgleinc'
/copy 'qrpgleref/P562.rpgleinc'
/copy 'qrpgleref/P854.rpgleinc'

dcl-ds theTable extname('T752') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T752 LIMIT 1;

theCharVar = 'Hello from P950';
dsply theCharVar;
P732();
P562();
P854();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P976;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P271.rpgleinc'
/copy 'qrpgleref/P586.rpgleinc'
/copy 'qrpgleref/P731.rpgleinc'

dcl-ds theTable extname('T170') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T170 LIMIT 1;

theCharVar = 'Hello from P976';
dsply theCharVar;
P271();
P586();
P731();
return;
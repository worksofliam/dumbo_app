**free

ctl-opt dftactgrp(*no);

dcl-pi P796;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P545.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P497.rpgleinc'

dcl-ds theTable extname('T85') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T85 LIMIT 1;

theCharVar = 'Hello from P796';
dsply theCharVar;
P545();
P192();
P497();
return;
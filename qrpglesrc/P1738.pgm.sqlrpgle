**free

ctl-opt dftactgrp(*no);

dcl-pi P1738;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P762.rpgleinc'
/copy 'qrpgleref/P1547.rpgleinc'
/copy 'qrpgleref/P1471.rpgleinc'

dcl-ds theTable extname('T252') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T252 LIMIT 1;

theCharVar = 'Hello from P1738';
dsply theCharVar;
P762();
P1547();
P1471();
return;
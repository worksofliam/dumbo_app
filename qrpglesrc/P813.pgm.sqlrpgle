**free

ctl-opt dftactgrp(*no);

dcl-pi P813;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P124.rpgleinc'
/copy 'qrpgleref/P297.rpgleinc'
/copy 'qrpgleref/P73.rpgleinc'

dcl-ds theTable extname('T54') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T54 LIMIT 1;

theCharVar = 'Hello from P813';
dsply theCharVar;
P124();
P297();
P73();
return;
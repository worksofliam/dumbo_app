**free

ctl-opt dftactgrp(*no);

dcl-pi P678;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P71.rpgleinc'
/copy 'qrpgleref/P669.rpgleinc'
/copy 'qrpgleref/P504.rpgleinc'

dcl-ds theTable extname('T200') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T200 LIMIT 1;

theCharVar = 'Hello from P678';
dsply theCharVar;
P71();
P669();
P504();
return;
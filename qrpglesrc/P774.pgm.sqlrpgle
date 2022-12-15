**free

ctl-opt dftactgrp(*no);

dcl-pi P774;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P212.rpgleinc'
/copy 'qrpgleref/P437.rpgleinc'
/copy 'qrpgleref/P737.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P774';
dsply theCharVar;
P212();
P437();
P737();
return;
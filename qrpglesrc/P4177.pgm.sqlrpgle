**free

ctl-opt dftactgrp(*no);

dcl-pi P4177;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3448.rpgleinc'
/copy 'qrpgleref/P188.rpgleinc'
/copy 'qrpgleref/P2154.rpgleinc'

dcl-ds theTable extname('T1611') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1611 LIMIT 1;

theCharVar = 'Hello from P4177';
dsply theCharVar;
P3448();
P188();
P2154();
return;
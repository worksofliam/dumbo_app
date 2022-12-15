**free

ctl-opt dftactgrp(*no);

dcl-pi P3499;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3362.rpgleinc'
/copy 'qrpgleref/P1646.rpgleinc'
/copy 'qrpgleref/P1270.rpgleinc'

dcl-ds theTable extname('T911') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T911 LIMIT 1;

theCharVar = 'Hello from P3499';
dsply theCharVar;
P3362();
P1646();
P1270();
return;
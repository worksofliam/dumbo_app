**free

ctl-opt dftactgrp(*no);

dcl-pi P2481;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1919.rpgleinc'
/copy 'qrpgleref/P543.rpgleinc'
/copy 'qrpgleref/P1208.rpgleinc'

dcl-ds theTable extname('T1804') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1804 LIMIT 1;

theCharVar = 'Hello from P2481';
dsply theCharVar;
P1919();
P543();
P1208();
return;
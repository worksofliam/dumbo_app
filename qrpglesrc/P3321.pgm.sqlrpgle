**free

ctl-opt dftactgrp(*no);

dcl-pi P3321;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1368.rpgleinc'
/copy 'qrpgleref/P818.rpgleinc'
/copy 'qrpgleref/P2357.rpgleinc'

dcl-ds theTable extname('T1271') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1271 LIMIT 1;

theCharVar = 'Hello from P3321';
dsply theCharVar;
P1368();
P818();
P2357();
return;
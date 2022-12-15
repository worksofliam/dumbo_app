**free

ctl-opt dftactgrp(*no);

dcl-pi P1852;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1687.rpgleinc'
/copy 'qrpgleref/P755.rpgleinc'
/copy 'qrpgleref/P911.rpgleinc'

dcl-ds theTable extname('T1854') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1854 LIMIT 1;

theCharVar = 'Hello from P1852';
dsply theCharVar;
P1687();
P755();
P911();
return;
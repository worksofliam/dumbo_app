**free

ctl-opt dftactgrp(*no);

dcl-pi P1034;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P95.rpgleinc'
/copy 'qrpgleref/P945.rpgleinc'
/copy 'qrpgleref/P986.rpgleinc'

dcl-ds theTable extname('T1207') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1207 LIMIT 1;

theCharVar = 'Hello from P1034';
dsply theCharVar;
P95();
P945();
P986();
return;
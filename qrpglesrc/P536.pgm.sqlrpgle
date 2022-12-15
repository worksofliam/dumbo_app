**free

ctl-opt dftactgrp(*no);

dcl-pi P536;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P316.rpgleinc'
/copy 'qrpgleref/P535.rpgleinc'
/copy 'qrpgleref/P109.rpgleinc'

dcl-ds theTable extname('T369') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T369 LIMIT 1;

theCharVar = 'Hello from P536';
dsply theCharVar;
P316();
P535();
P109();
return;
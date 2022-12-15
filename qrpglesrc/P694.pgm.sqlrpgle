**free

ctl-opt dftactgrp(*no);

dcl-pi P694;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P509.rpgleinc'
/copy 'qrpgleref/P94.rpgleinc'
/copy 'qrpgleref/P368.rpgleinc'

dcl-ds theTable extname('T574') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T574 LIMIT 1;

theCharVar = 'Hello from P694';
dsply theCharVar;
P509();
P94();
P368();
return;
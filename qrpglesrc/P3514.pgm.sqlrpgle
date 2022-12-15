**free

ctl-opt dftactgrp(*no);

dcl-pi P3514;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P2368.rpgleinc'
/copy 'qrpgleref/P3258.rpgleinc'
/copy 'qrpgleref/P2001.rpgleinc'

dcl-ds theTable extname('T166') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T166 LIMIT 1;

theCharVar = 'Hello from P3514';
dsply theCharVar;
P2368();
P3258();
P2001();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P327;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P322.rpgleinc'
/copy 'qrpgleref/P195.rpgleinc'

dcl-ds theTable extname('T164') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T164 LIMIT 1;

theCharVar = 'Hello from P327';
dsply theCharVar;
P151();
P322();
P195();
return;
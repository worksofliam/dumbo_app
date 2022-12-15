**free

ctl-opt dftactgrp(*no);

dcl-pi P414;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P351.rpgleinc'
/copy 'qrpgleref/P159.rpgleinc'
/copy 'qrpgleref/P152.rpgleinc'

dcl-ds theTable extname('T381') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T381 LIMIT 1;

theCharVar = 'Hello from P414';
dsply theCharVar;
P351();
P159();
P152();
return;
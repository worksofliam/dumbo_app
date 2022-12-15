**free

ctl-opt dftactgrp(*no);

dcl-pi P272;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P84.rpgleinc'
/copy 'qrpgleref/P151.rpgleinc'
/copy 'qrpgleref/P105.rpgleinc'

dcl-ds theTable extname('T267') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T267 LIMIT 1;

theCharVar = 'Hello from P272';
dsply theCharVar;
P84();
P151();
P105();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P387;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P319.rpgleinc'
/copy 'qrpgleref/P372.rpgleinc'
/copy 'qrpgleref/P313.rpgleinc'

dcl-ds theTable extname('T212') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T212 LIMIT 1;

theCharVar = 'Hello from P387';
dsply theCharVar;
P319();
P372();
P313();
return;
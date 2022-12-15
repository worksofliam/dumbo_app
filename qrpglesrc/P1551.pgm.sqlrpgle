**free

ctl-opt dftactgrp(*no);

dcl-pi P1551;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P911.rpgleinc'
/copy 'qrpgleref/P1055.rpgleinc'
/copy 'qrpgleref/P132.rpgleinc'

dcl-ds theTable extname('T296') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T296 LIMIT 1;

theCharVar = 'Hello from P1551';
dsply theCharVar;
P911();
P1055();
P132();
return;
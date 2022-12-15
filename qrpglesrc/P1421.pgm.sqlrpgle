**free

ctl-opt dftactgrp(*no);

dcl-pi P1421;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P854.rpgleinc'
/copy 'qrpgleref/P693.rpgleinc'
/copy 'qrpgleref/P268.rpgleinc'

dcl-ds theTable extname('T756') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T756 LIMIT 1;

theCharVar = 'Hello from P1421';
dsply theCharVar;
P854();
P693();
P268();
return;
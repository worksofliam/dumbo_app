**free

ctl-opt dftactgrp(*no);

dcl-pi P590;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P246.rpgleinc'
/copy 'qrpgleref/P157.rpgleinc'
/copy 'qrpgleref/P228.rpgleinc'

dcl-ds theTable extname('T229') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T229 LIMIT 1;

theCharVar = 'Hello from P590';
dsply theCharVar;
P246();
P157();
P228();
return;
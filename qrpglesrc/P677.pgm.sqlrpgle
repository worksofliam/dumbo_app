**free

ctl-opt dftactgrp(*no);

dcl-pi P677;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P49.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P98.rpgleinc'

dcl-ds theTable extname('T941') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T941 LIMIT 1;

theCharVar = 'Hello from P677';
dsply theCharVar;
P49();
P29();
P98();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P236;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P161.rpgleinc'
/copy 'qrpgleref/P192.rpgleinc'
/copy 'qrpgleref/P207.rpgleinc'

dcl-ds theTable extname('T389') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T389 LIMIT 1;

theCharVar = 'Hello from P236';
dsply theCharVar;
P161();
P192();
P207();
return;
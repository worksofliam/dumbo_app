**free

ctl-opt dftactgrp(*no);

dcl-pi P3258;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3121.rpgleinc'
/copy 'qrpgleref/P940.rpgleinc'
/copy 'qrpgleref/P3127.rpgleinc'

dcl-ds theTable extname('T491') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T491 LIMIT 1;

theCharVar = 'Hello from P3258';
dsply theCharVar;
P3121();
P940();
P3127();
return;
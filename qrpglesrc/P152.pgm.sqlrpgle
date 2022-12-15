**free

ctl-opt dftactgrp(*no);

dcl-pi P152;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P31.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P140.rpgleinc'

dcl-ds theTable extname('T616') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T616 LIMIT 1;

theCharVar = 'Hello from P152';
dsply theCharVar;
P31();
P127();
P140();
return;
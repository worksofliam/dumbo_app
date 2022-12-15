**free

ctl-opt dftactgrp(*no);

dcl-pi P990;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P29.rpgleinc'
/copy 'qrpgleref/P460.rpgleinc'
/copy 'qrpgleref/P785.rpgleinc'

dcl-ds theTable extname('T485') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T485 LIMIT 1;

theCharVar = 'Hello from P990';
dsply theCharVar;
P29();
P460();
P785();
return;
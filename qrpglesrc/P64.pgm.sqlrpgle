**free

ctl-opt dftactgrp(*no);

dcl-pi P64;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P59.rpgleinc'
/copy 'qrpgleref/P1.rpgleinc'
/copy 'qrpgleref/P19.rpgleinc'

dcl-ds theTable extname('T863') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T863 LIMIT 1;

theCharVar = 'Hello from P64';
dsply theCharVar;
P59();
P1();
P19();
return;
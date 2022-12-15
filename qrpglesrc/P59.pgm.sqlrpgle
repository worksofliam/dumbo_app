**free

ctl-opt dftactgrp(*no);

dcl-pi P59;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P46.rpgleinc'
/copy 'qrpgleref/P8.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T429') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T429 LIMIT 1;

theCharVar = 'Hello from P59';
dsply theCharVar;
P46();
P8();
P29();
return;
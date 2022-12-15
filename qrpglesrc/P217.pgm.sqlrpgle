**free

ctl-opt dftactgrp(*no);

dcl-pi P217;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P171.rpgleinc'
/copy 'qrpgleref/P113.rpgleinc'
/copy 'qrpgleref/P29.rpgleinc'

dcl-ds theTable extname('T1241') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1241 LIMIT 1;

theCharVar = 'Hello from P217';
dsply theCharVar;
P171();
P113();
P29();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P251;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P61.rpgleinc'
/copy 'qrpgleref/P215.rpgleinc'
/copy 'qrpgleref/P88.rpgleinc'

dcl-ds theTable extname('T235') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T235 LIMIT 1;

theCharVar = 'Hello from P251';
dsply theCharVar;
P61();
P215();
P88();
return;
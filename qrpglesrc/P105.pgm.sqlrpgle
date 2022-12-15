**free

ctl-opt dftactgrp(*no);

dcl-pi P105;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P88.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'
/copy 'qrpgleref/P16.rpgleinc'

dcl-ds theTable extname('T15') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T15 LIMIT 1;

theCharVar = 'Hello from P105';
dsply theCharVar;
P88();
P18();
P16();
return;
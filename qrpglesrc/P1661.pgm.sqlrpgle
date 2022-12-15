**free

ctl-opt dftactgrp(*no);

dcl-pi P1661;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1371.rpgleinc'
/copy 'qrpgleref/P1111.rpgleinc'
/copy 'qrpgleref/P1334.rpgleinc'

dcl-ds theTable extname('T882') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T882 LIMIT 1;

theCharVar = 'Hello from P1661';
dsply theCharVar;
P1371();
P1111();
P1334();
return;
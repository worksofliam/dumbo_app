**free

ctl-opt dftactgrp(*no);

dcl-pi P1715;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P392.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P544.rpgleinc'

dcl-ds theTable extname('T568') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T568 LIMIT 1;

theCharVar = 'Hello from P1715';
dsply theCharVar;
P392();
P705();
P544();
return;
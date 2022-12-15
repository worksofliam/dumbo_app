**free

ctl-opt dftactgrp(*no);

dcl-pi P3036;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P3028.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P1520.rpgleinc'

dcl-ds theTable extname('T955') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T955 LIMIT 1;

theCharVar = 'Hello from P3036';
dsply theCharVar;
P3028();
P127();
P1520();
return;
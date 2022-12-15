**free

ctl-opt dftactgrp(*no);

dcl-pi P314;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P19.rpgleinc'
/copy 'qrpgleref/P127.rpgleinc'
/copy 'qrpgleref/P52.rpgleinc'

dcl-ds theTable extname('T991') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T991 LIMIT 1;

theCharVar = 'Hello from P314';
dsply theCharVar;
P19();
P127();
P52();
return;
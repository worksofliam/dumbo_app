**free

ctl-opt dftactgrp(*no);

dcl-pi P60;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P28.rpgleinc'
/copy 'qrpgleref/P33.rpgleinc'
/copy 'qrpgleref/P18.rpgleinc'

dcl-ds theTable extname('T208') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T208 LIMIT 1;

theCharVar = 'Hello from P60';
dsply theCharVar;
P28();
P33();
P18();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1066;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P347.rpgleinc'
/copy 'qrpgleref/P705.rpgleinc'
/copy 'qrpgleref/P193.rpgleinc'

dcl-ds theTable extname('T947') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T947 LIMIT 1;

theCharVar = 'Hello from P1066';
dsply theCharVar;
P347();
P705();
P193();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1519;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1077.rpgleinc'
/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P1116.rpgleinc'

dcl-ds theTable extname('T358') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T358 LIMIT 1;

theCharVar = 'Hello from P1519';
dsply theCharVar;
P1077();
P13();
P1116();
return;
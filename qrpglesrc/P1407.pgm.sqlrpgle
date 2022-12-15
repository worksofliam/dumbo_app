**free

ctl-opt dftactgrp(*no);

dcl-pi P1407;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1178.rpgleinc'
/copy 'qrpgleref/P650.rpgleinc'
/copy 'qrpgleref/P314.rpgleinc'

dcl-ds theTable extname('T332') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T332 LIMIT 1;

theCharVar = 'Hello from P1407';
dsply theCharVar;
P1178();
P650();
P314();
return;
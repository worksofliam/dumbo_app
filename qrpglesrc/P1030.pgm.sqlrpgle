**free

ctl-opt dftactgrp(*no);

dcl-pi P1030;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P766.rpgleinc'
/copy 'qrpgleref/P750.rpgleinc'
/copy 'qrpgleref/P771.rpgleinc'

dcl-ds theTable extname('T1162') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T1162 LIMIT 1;

theCharVar = 'Hello from P1030';
dsply theCharVar;
P766();
P750();
P771();
return;
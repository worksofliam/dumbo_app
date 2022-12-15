**free

ctl-opt dftactgrp(*no);

dcl-pi P114;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P13.rpgleinc'
/copy 'qrpgleref/P27.rpgleinc'
/copy 'qrpgleref/P25.rpgleinc'

dcl-ds theTable extname('T138') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T138 LIMIT 1;

theCharVar = 'Hello from P114';
dsply theCharVar;
P13();
P27();
P25();
return;
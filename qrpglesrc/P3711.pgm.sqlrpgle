**free

ctl-opt dftactgrp(*no);

dcl-pi P3711;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P588.rpgleinc'
/copy 'qrpgleref/P123.rpgleinc'
/copy 'qrpgleref/P3092.rpgleinc'

dcl-ds theTable extname('T190') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T190 LIMIT 1;

theCharVar = 'Hello from P3711';
dsply theCharVar;
P588();
P123();
P3092();
return;
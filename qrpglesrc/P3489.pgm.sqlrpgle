**free

ctl-opt dftactgrp(*no);

dcl-pi P3489;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1888.rpgleinc'
/copy 'qrpgleref/P3476.rpgleinc'
/copy 'qrpgleref/P63.rpgleinc'

dcl-ds theTable extname('T727') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T727 LIMIT 1;

theCharVar = 'Hello from P3489';
dsply theCharVar;
P1888();
P3476();
P63();
return;
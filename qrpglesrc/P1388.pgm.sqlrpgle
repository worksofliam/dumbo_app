**free

ctl-opt dftactgrp(*no);

dcl-pi P1388;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P1182.rpgleinc'
/copy 'qrpgleref/P1259.rpgleinc'
/copy 'qrpgleref/P536.rpgleinc'

dcl-ds theTable extname('T21') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T21 LIMIT 1;

theCharVar = 'Hello from P1388';
dsply theCharVar;
P1182();
P1259();
P536();
return;
**free

ctl-opt dftactgrp(*no);

dcl-pi P1764;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P421.rpgleinc'
/copy 'qrpgleref/P580.rpgleinc'
/copy 'qrpgleref/P1752.rpgleinc'

dcl-ds theTable extname('T188') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T188 LIMIT 1;

theCharVar = 'Hello from P1764';
dsply theCharVar;
P421();
P580();
P1752();
return;
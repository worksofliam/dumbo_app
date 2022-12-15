**free

ctl-opt dftactgrp(*no);

dcl-pi P298;
end-pi;

dcl-s theCharVar Char(52);

/copy 'qrpgleref/P78.rpgleinc'
/copy 'qrpgleref/P7.rpgleinc'
/copy 'qrpgleref/P101.rpgleinc'

dcl-ds theTable extname('T123') qualified;
end-ds;

EXEC SQL SELECT * INTO :theTable FROM T123 LIMIT 1;

theCharVar = 'Hello from P298';
dsply theCharVar;
P78();
P7();
P101();
return;